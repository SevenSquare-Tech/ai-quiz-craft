import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ai-quiz-craft/custom_widgets/custom_button.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_template.dart';
import 'package:ai-quiz-craft/screens/home/home_page.dart';
import 'package:ai-quiz-craft/service/firestore_db.dart';
import 'package:ai-quiz-craft/theme/font.dart';
import 'package:ai-quiz-craft/theme/palette.dart';


class VerifyEmail extends StatefulWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  Timer? timer;

  @override
  initState() {
    timer = Timer.periodic(const Duration(seconds: 3), (time) {
      checkEmailVerification();
    });
    super.initState();
  }

  @override
  dispose() {
    timer?.cancel();
    super.dispose();
  }

  Future<void> checkEmailVerification() async {
    await FirestoreService().user!.reload();

    if (FirestoreService().user!.emailVerified) {
      timer?.cancel();
      Get.offAll(() => const HomePage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomTemplate(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '''You need to verify your account before going further. A verification email has been 
          already sent to your email.''',
          style: TextStyle(
            fontFamily: fontFamily,
            fontSize: 18,
            fontWeight: Font.regular,
            color: Palette.font,
          ),
          textAlign: TextAlign.center,
        ),
        CustomButton(
          key: const Key('btn-resend-email'),
          text: "Resend Email",
          onTap: () => FirestoreService().user!.sendEmailVerification(),
        ),
      ],
    ));
  }
}
