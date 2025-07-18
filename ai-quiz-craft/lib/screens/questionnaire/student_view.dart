import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ai-quiz-craft/controllers/questionnaire_controller.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_button.dart';
import 'package:ai-quiz-craft/custom_widgets/answer_container.dart';
import 'package:ai-quiz-craft/screens/questionnaire/questionnaire.dart';
import 'package:ai-quiz-craft/screens/questionnaire/stud_finish_popup.dart';
import 'package:ai-quiz-craft/screens/questionnaire/timesup_popup.dart';
import 'package:ai-quiz-craft/screens/questionnaire/top_q_bar.dart';
import 'package:ai-quiz-craft/service/db_model/question_set.dart';
import 'package:ai-quiz-craft/theme/palette.dart';

class StudentView extends StatefulWidget {
  const StudentView({Key? key}) : super(key: key);

  @override
  State<StudentView> createState() => _StudentViewState();
}

class _StudentViewState extends State<StudentView> {
  int currentIdx = 0;
  int time = 0;
  late List<bool> qState = List.filled(4, false);
  List<QuestionSet> questionnaire =
      Get.find<QuestionnaireController>().questionnaire;
  late Timer timer;

  @override
  initState() {
    super.initState();
    questionnaire.shuffle();
    time = (questionnaire.length / 2 * 60).toInt();
    startTimer();
  }

  startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (time <= 0) {
        setState(() {
          timer.cancel();
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) {
                return TimesupPopup();
              });
        });
      } else {
        setState(() {
          time--;
        });
      }
    });
  }

  @override
  dispose() {
    timer.cancel();
    super.dispose();
  }

  updateQuestion() {
    if (qState.any((e) => e)) {
      setState(() {
        if (checkAns()) {
          Get.find<QuestionnaireController>().scoreInc();
        }

        if (currentIdx == questionnaire.length - 1) {
          timer.cancel();
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) {
                return StudFinishPopup();
              });
        } else {
          refreshAns();
          currentIdx++;
        }
      });
    }
  }

  bool checkAns() {
    return questionnaire[currentIdx]
            .allAns[qState.indexOf(true)]
            .toLowerCase() ==
        questionnaire[currentIdx].crctAns.toLowerCase();
  }

  refreshAns() {
    qState.setAll(0, [false, false, false, false]);
  }

  Widget renderAnswer(String i) {
    return AnswerContainer(
      ans: i,
      isPicked: qState[questionnaire[currentIdx].allAns.indexOf(i)],
      onTap: () {
        setState(() {
          refreshAns();
          qState[questionnaire[currentIdx].allAns.indexOf(i)] = true;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Questionnaire(
      topBar: TopQBar(
          color: time > 30 ? Palette.timerGreen : Palette.timerRed,
          txt:
              "${"${(time ~/ 60)}".padLeft(2, '0')} : ${"${time % 60}".padLeft(2, '0')}"),
      renderAnswer: renderAnswer,
      bottomNavBtn: CustomButton(
        text: "Next",
        onTap: () => updateQuestion(),
      ),
      currentIdx: currentIdx,
    );
  }
}
