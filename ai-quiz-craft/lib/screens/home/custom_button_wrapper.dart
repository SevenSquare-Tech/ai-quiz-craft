import 'package:flutter/material.dart';

import 'package:ai-quiz-craft/custom_widgets/custom_button.dart';

class CustomButtonWrapper extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const CustomButtonWrapper({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 100,
      child: CustomButton(text: text, onTap: onTap),
    );
  }
}
