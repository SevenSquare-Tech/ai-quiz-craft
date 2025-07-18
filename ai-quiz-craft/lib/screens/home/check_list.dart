import 'package:get/get.dart';

import 'package:ai-quiz-craft/controllers/question_list_controller.dart';
import 'package:ai-quiz-craft/controllers/user_type_controller.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_snackbar.dart';
import 'package:ai-quiz-craft/screens/question_bank/question_bank.dart';
import 'package:ai-quiz-craft/service/firestore_db.dart';
import 'package:ai-quiz-craft/theme/palette.dart';

Future<void> checkQuestionBank() async {
  bool isReview = Get.find<UserTypeController>().mode == Mode.review;
  Get.find<QuestionListController>().overwriteList(isReview
      ? Get.find<QuestionListController>().completedList
      : await FirestoreService().getQuestionnaireNameList());

  List<String> data = Get.find<QuestionListController>().questionList;

  Get.back();

  if (data.isNotEmpty) {
    Get.to(() => const QuestionBank());
  } else {
    customSnackBar(
        "No questionnaire found",
        isReview
            ? "You haven't attempt any quizzes from Question Bank"
            : await FirestoreService().getGeneratorStatus()
                ? "Please wait for questions to get generated"
                : "Please upload a document to generate questions",
        Palette.warning);
  }
}
