import 'package:flutter/material.dart';

import 'package:ai-quiz-craft/theme/font.dart';
import 'package:ai-quiz-craft/theme/palette.dart';

class TopBar extends StatelessWidget {
  final String txt;
  const TopBar({Key? key, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      alignment: Alignment.bottomCenter,
      width: double.maxFinite,
      child: Text(
        txt,
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: 22,
          fontWeight: Font.medium,
          color: Palette.font,
        ),
      ),
    );
  }
}
