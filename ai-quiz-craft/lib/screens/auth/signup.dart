import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ai-quiz-craft/screens/auth/auth_widget.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_button.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_snackbar.dart';
import 'package:ai-quiz-craft/screens/auth/login.dart';
import 'package:ai-quiz-craft/service/firebase_auth.dart';
import 'package:ai-quiz-craft/theme/palette.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> gkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AuthWidget(
        pageTitle: "Sign Up",
        primaryBtnFunc: () async {
          if (gkey.currentState!.validate()) {
            String res = await Auth()
                .userSignup(emailController.text, passwordController.text);
            if (res == "Success") {
              customSnackBar(
                  "Check mail",
                  "A verification email has been sent to your mail",
                  Palette.warning);
            } else {
              customSnackBar("Error", res, Palette.error);
            }
          }
        },
        bottomBtnTxt: "Log in",
        bottomText: "Already have an account ?",
        hyperLinkFunc: () => Get.to(() => const Login()),
        emailController: emailController,
        passwordController: passwordController,
        gkey: gkey);
  }
}
