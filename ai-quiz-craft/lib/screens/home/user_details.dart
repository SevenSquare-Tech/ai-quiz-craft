import 'package:flutter/material.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_snackbar.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_text_input.dart';
import 'package:ai-quiz-craft/custom_widgets/render_img.dart';
import 'package:ai-quiz-craft/screens/home/custom_button_wrapper.dart';
import 'package:ai-quiz-craft/service/firestore_db.dart';
import 'package:ai-quiz-craft/theme/palette.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  final nameController = TextEditingController();

  Widget _userTypeButton(String key, String btnTxt, bool isTeacher) {
    return CustomButtonWrapper(
        key: Key(key),
        text: btnTxt,
        onTap: () async {
          if (!await FirestoreService()
              .sendUserType(nameController.text, isTeacher)) {
            customSnackBar("Error", "Internal server error", Palette.error);
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      child: Column(
        children: [
          RenderImage(
              path: 'assets/images/choice.svg',
              expaned: true,
              svgWidth: MediaQuery.of(context).size.width - 100),
          CustomTextInput(
              key: const Key('text-input-name'),
              text: "Name",
              controller: nameController),
          Container(
            width: MediaQuery.of(context).size.width - 100,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            alignment: Alignment.bottomCenter,
            child: Column(children: [
              _userTypeButton('btn-teacher', "I'm a Teacher", true),
              _userTypeButton('btn-student', "I'm a Student", false)
            ]),
          )
        ],
      ),
    );
  }
}
