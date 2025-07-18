import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ai-quiz-craft/controllers/questionnaire_controller.dart';

import 'package:ai-quiz-craft/custom_widgets/custom_button.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_popup.dart';
import 'package:ai-quiz-craft/custom_widgets/render_img.dart';
import 'package:ai-quiz-craft/screens/question_bank/wipe_data.dart';
import 'package:ai-quiz-craft/theme/font.dart';
import 'package:ai-quiz-craft/theme/palette.dart';

class DeletePopup extends StatelessWidget {
  final String qName;
  const DeletePopup({Key? key, required this.qName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPopup(size: 400.0, wids: [
      const RenderImage(
        path: 'assets/images/delete.svg',
        expaned: false,
        svgHeight: 200,
      ),
      Text(
        "Do you want to delete this questionnaire?",
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: 19,
          fontWeight: Font.regular,
          color: Palette.font,
        ),
        textAlign: TextAlign.center,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(
            key: const Key('button-q-dlt-conf'),
            text: "Yes",
            onTap: () async {
              Get.find<QuestionnaireController>().overwriteRemovalList();
              await wipeQuestions(qName);
            },
          ),
          CustomButton(
            key: const Key('button-q-dlt-decl'),
            text: "No",
            onTap: () => Get.back(),
          ),
        ],
      ),
    ]);
  }
}
