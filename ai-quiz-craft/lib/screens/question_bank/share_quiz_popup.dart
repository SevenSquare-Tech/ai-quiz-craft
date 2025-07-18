import 'package:flutter/material.dart';
import 'package:ai-quiz-craft/custom_widgets/render_img.dart';
import 'package:share_plus/share_plus.dart';

import 'package:ai-quiz-craft/custom_widgets/custom_popup.dart';
import 'package:ai-quiz-craft/service/firestore_db.dart';
import 'package:ai-quiz-craft/theme/font.dart';
import 'package:ai-quiz-craft/theme/palette.dart';

class ShareQuizPopup extends StatelessWidget {
  final String quizName;
  const ShareQuizPopup({Key? key, required this.quizName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var code = '${FirestoreService().user!.uid}-$quizName';
    FirestoreService().generateQuiz(quizName);
    Share.share(code);

    return CustomPopup(size: 400.0, wids: [
      const RenderImage(
        path: 'assets/images/share.svg',
        expaned: false,
        svgHeight: 200,
      ),
      Text(
        "Code: $code",
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: 19,
          fontWeight: Font.regular,
          color: Palette.font,
        ),
        textAlign: TextAlign.center,
      ),
    ]);
  }
}
