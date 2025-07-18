import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ai-quiz-craft/screens/auth/auth_widget.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_snackbar.dart';
import 'package:ai-quiz-craft/screens/auth/signup.dart';
import 'package:ai-quiz-craft/screens/auth/verify.dart';
import 'package:ai-quiz-craft/screens/home/home_page.dart';
import 'package:ai-quiz-craft/service/firebase_auth.dart';
import 'package:ai-quiz-craft/theme/palette.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> gkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AuthWidget(
      pageTitle: "Log In",
      primaryBtnFunc: () async {
        String res = await Auth()
            .userLogin(emailController.text, passwordController.text);
        if (res == "Verified") {
          Get.offAll(() => const HomePage());
        } else if (res == "Not Verified") {
          Get.to(() => const VerifyEmail());
        } else {
          customSnackBar("Error", res, Palette.error);
        }
      },
      bottomBtnTxt: "Sign up",
      bottomText: "Don't have an account ?",
      hyperLinkFunc: () => Get.to(() => const SignUp()),
      emailController: emailController,
      passwordController: passwordController,
      gkey: gkey,
    );
  }
}
