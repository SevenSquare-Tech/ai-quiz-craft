import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ai-quiz-craft/controllers/questionnaire_controller.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_button.dart';
import 'package:ai-quiz-craft/custom_widgets/answer_container.dart';
import 'package:ai-quiz-craft/screens/questionnaire/questionnaire.dart';
import 'package:ai-quiz-craft/screens/questionnaire/teach_finish_popup.dart';
import 'package:ai-quiz-craft/screens/questionnaire/top_q_bar.dart';
import 'package:ai-quiz-craft/service/db_model/question_set.dart';
import 'package:ai-quiz-craft/theme/palette.dart';

class TeacherView extends StatefulWidget {
  const TeacherView({Key? key}) : super(key: key);

  @override
  State<TeacherView> createState() => _TeacherViewState();
}

class _TeacherViewState extends State<TeacherView> {
  int currentIdx = 0;
  List<QuestionSet> questionnaire =
      Get.find<QuestionnaireController>().questionnaire;

  Widget renderAnswer(String i) {
    return AnswerContainer(
      ans: i,
      isPicked:
          i.toLowerCase() == questionnaire[currentIdx].crctAns.toLowerCase(),
      onTap: () => {},
    );
  }

  Widget renderNavBtn(String txt, bool isRemove) {
    return CustomButton(
      text: txt,
      onTap: () {
        updateQuestion(isRemove);
      },
    );
  }

  updateQuestion(bool isRemove) {
    setState(() {
      if (isRemove) {
        Get.find<QuestionnaireController>()
            .addToRemovalList(questionnaire[currentIdx].id);
      }
      if (currentIdx == questionnaire.length - 1) {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) {
              return TeachFinishPopup();
            });
      } else {
        currentIdx++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Questionnaire(
      topBar: TopQBar(color: Palette.theme, txt: "Keep / Drop"),
      renderAnswer: renderAnswer,
      bottomNavBtn: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [renderNavBtn("Drop", true), renderNavBtn("Keep", false)],
      ),
      currentIdx: currentIdx,
    );
  }
}
