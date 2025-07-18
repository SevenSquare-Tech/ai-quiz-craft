import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ai-quiz-craft/controllers/questionnaire_controller.dart';
import 'package:ai-quiz-craft/controllers/user_type_controller.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_button.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_popup.dart';
import 'package:ai-quiz-craft/custom_widgets/render_img.dart';
import 'package:ai-quiz-craft/screens/home/home_page.dart';
import 'package:ai-quiz-craft/screens/score/score.dart';
import 'package:ai-quiz-craft/service/firestore_db.dart';
import 'package:ai-quiz-craft/theme/font.dart';
import 'package:ai-quiz-craft/theme/palette.dart';

class TimesupPopup extends StatelessWidget {
  final Mode currentMode = Get.find<UserTypeController>().mode;
  final QuestionnaireController controller =
      Get.find<QuestionnaireController>();
  TimesupPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPopup(size: 350.0, wids: [
      const RenderImage(
        path: "assets/images/timeup.svg",
        expaned: false,
        svgHeight: 200,
      ),
      Text(
        "Time's up",
        style: TextStyle(
            fontFamily: fontFamily,
            fontSize: 22,
            fontWeight: Font.regular,
            color: Palette.font),
        textAlign: TextAlign.center,
      ),
      CustomButton(
        key: const Key('btn-timeup-conf'),
        text: "Finish",
        onTap: () async {
          Get.back();

          Get.back();
          if (currentMode == Mode.self) {
            Get.to(() => Score());
          } else {
            FirestoreService().sendScore(controller.questionnaireName,
                controller.avg, controller.author);
            Get.offAll(() => const HomePage());
          }
        },
      )
    ]);
  }
}
