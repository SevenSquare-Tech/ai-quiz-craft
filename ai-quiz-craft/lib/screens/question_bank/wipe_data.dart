import 'package:get/get.dart';
import 'package:ai-quiz-craft/controllers/questionnaire_controller.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_snackbar.dart';
import 'package:ai-quiz-craft/service/db_model/question_set.dart';
import 'package:ai-quiz-craft/service/firestore_db.dart';
import 'package:ai-quiz-craft/theme/palette.dart';

wipeQuestions(String qName) async {
  List<String> qID = Get.find<QuestionnaireController>().removalList;

  localStorage.delete(qName);
  Get.back();
  if (!await FirestoreService().deleteQuestions(qName, qID)) {
    customSnackBar("Error", "Please try again", Palette.error);
  } else {
    Get.find<QuestionnaireController>().resetRemovalList();
    customSnackBar("Deleting questions...",
        "Questions will be deleted in few minutes...", Palette.success);
  }
}
