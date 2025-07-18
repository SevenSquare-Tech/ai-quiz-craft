import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ai-quiz-craft/controllers/quiz_controller.dart';

import 'package:ai-quiz-craft/custom_widgets/custom_card.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_template.dart';
import 'package:ai-quiz-craft/screens/question_bank/top_bar.dart';
import 'package:ai-quiz-craft/screens/review/questionnaire_view.dart';

class TeacherReview extends StatelessWidget {
  final List<String> quizList = Get.find<QuizController>().quizList;
  TeacherReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTemplate(
      body: Column(
        children: [
          const TopBar(txt: "Select Questionnaire"),
          Expanded(
            child: ListView.builder(
              itemCount: quizList.length,
              itemBuilder: (context, idx) {
                return CustomCard(
                    title: quizList[idx],
                    onLongPress: () {},
                    onTap: () => Get.to(() => const QuestionnaireView()));
              },
            ),
          )
        ],
      ),
    );
  }
}
