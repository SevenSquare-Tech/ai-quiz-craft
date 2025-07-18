import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ai-quiz-craft/controllers/question_list_controller.dart';
import 'package:ai-quiz-craft/controllers/questionnaire_controller.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_button.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_card.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_loading.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_template.dart';
import 'package:ai-quiz-craft/screens/question_bank/top_bar.dart';
import 'package:ai-quiz-craft/screens/question_bank/delete_popup.dart';
import 'package:ai-quiz-craft/screens/question_bank/quiz_start_popup.dart';

class QuestionBank extends StatefulWidget {
  const QuestionBank({Key? key}) : super(key: key);

  @override
  State<QuestionBank> createState() => _QuestionBankState();
}

class _QuestionBankState extends State<QuestionBank> {
  List<String> questionList = Get.find<QuestionListController>().questionList;

  Widget popupTemplate(int idx, Widget popup) {
    return FutureBuilder(
        future: Get.find<QuestionnaireController>()
            .overwriteList(questionList[idx]),
        builder: (cntxt, snapshot) {
          Widget ret = Container();
          if (snapshot.connectionState == ConnectionState.done) {
            ret = popup;
          } else {
            ret = const CustomLoading();
          }
          return ret;
        });
  }

  @override
  Widget build(BuildContext context) {
    return CustomTemplate(
      body: Column(
        children: [
          const TopBar(txt: "Select Questionnaire"),
          Expanded(
            child: ListView.builder(
              itemCount: questionList.length,
              itemBuilder: (context, idx) {
                return CustomCard(
                    title: questionList[idx],
                    onLongPress: () {
                      showDialog(
                          context: context,
                          builder: (_) {
                            return popupTemplate(
                                idx,
                                DeletePopup(
                                  qName: questionList[idx],
                                ));
                          });
                    },
                    onTap: () async {
                      showDialog(
                          context: context,
                          builder: (_) {
                            return popupTemplate(idx, QuizStartPopup(idx: idx));
                          });
                    });
              },
            ),
          )
        ],
      ),
    );
  }
}
