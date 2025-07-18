import 'package:flutter/material.dart';

import 'package:ai-quiz-craft/custom_widgets/custom_button.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_popup.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_template.dart';
import 'package:ai-quiz-craft/custom_widgets/render_img.dart';
import 'package:ai-quiz-craft/screens/import/file_browser_popup.dart';
import 'package:ai-quiz-craft/theme/font.dart';
import 'package:ai-quiz-craft/theme/palette.dart';

class ImportFile extends StatefulWidget {
  const ImportFile({Key? key}) : super(key: key);

  @override
  State<ImportFile> createState() => _ImportFileState();
}

class _ImportFileState extends State<ImportFile> {
  bool isLoading = false;

  Widget fileBrowser() {
    return SizedBox(
      width: double.infinity,
      child: InkWell(
        key: const Key('btn-upload'),
        splashColor: Palette.transparent,
        highlightColor: Palette.transparent,
        onTap: () {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext cntxt) {
                return StatefulBuilder(builder: (cntxt, setState) {
                  return const FileBrowserPopup();
                });
              });
        },
        child: RenderImage(
          path: 'assets/images/upload.svg',
          expaned: false,
          svgWidth: MediaQuery.of(context).size.width - 100,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomTemplate(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 100),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Palette.containerBg,
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                ),
                child: Center(
                  child: Text(
                    "Upload materials (PDF) to generate questions. Please make sure there are only texts in uploaded content to get improved results.",
                    style: TextStyle(
                        fontFamily: fontFamily,
                        fontSize: 17,
                        fontWeight: Font.regular,
                        color: Palette.font),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            fileBrowser()
          ],
        ),
      ),
    );
  }
}
