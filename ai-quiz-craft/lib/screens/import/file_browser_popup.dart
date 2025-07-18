import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdf_text/pdf_text.dart';
import 'package:http/http.dart' as http;

import 'package:ai-quiz-craft/custom_widgets/custom_button.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_loading.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_popup.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_snackbar.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_text_input.dart';
import 'package:ai-quiz-craft/custom_widgets/render_img.dart';
import 'package:ai-quiz-craft/service/firestore_db.dart';
import 'package:ai-quiz-craft/theme/palette.dart';

class FileBrowserPopup extends StatefulWidget {
  const FileBrowserPopup({Key? key}) : super(key: key);

  @override
  State<FileBrowserPopup> createState() => _FileBrowserPopupState();
}

class _FileBrowserPopupState extends State<FileBrowserPopup> {
  final fileNameController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(_) {
    return CustomPopup(size: 400.0, wids: [
      isLoading
          ? const CustomLoading()
          : Column(
              children: [
                const RenderImage(
                  path: 'assets/images/wait.svg',
                  expaned: false,
                  svgHeight: 200,
                ),
                CustomTextInput(
                  key: const Key('input-q-name'),
                  text: "Questionnaire name",
                  controller: fileNameController,
                ),
                CustomButton(
                  key: const Key('btn-q-name-conf'),
                  text: "Confirm",
                  onTap: () async {
                    getFile((fileNameController.text == "")
                        ? "noname"
                        : fileNameController.text);
                    setState(() {
                      fileNameController.text = "";
                      isLoading = true;
                    });

                    Get.back();
                  },
                )
              ],
            ),
    ]);
  }
}

Future getQuestions(String cont, String qName) async {
  var url = Uri.parse("https://mcq-gen-nzbm4e7jxa-el.a.run.app/get-questions");
  Map body = {
    'context': cont,
    'uid': FirestoreService().user!.uid,
    'name': qName
  };

  var res = await http
      .post(url,
          headers: {"Content-Type": "application/json"},
          body: json.encode(body))
      .timeout(const Duration(seconds: 5), onTimeout: () {
    return http.Response(
        'Service unavailabe. Check your internet connection', 408);
  });

  if (res.statusCode == 200) {
    customSnackBar(
        "Success",
        "Generating question may take a while. It will be available under 'Question Bank' once process is finished.",
        Palette.success);
    if (!await FirestoreService().saveUser(false, state: true)) {
      customSnackBar("Error", "Connection error", Palette.error);
    }
  } else {
    customSnackBar("Error", res.body.toString(), Palette.error);
  }
}

getFile(String fileName) async {
  if (await FirestoreService().getGeneratorStatus()) {
    customSnackBar("...", "Please wait for previous document to get processed.",
        Palette.warning);
    return;
  }

  FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['pdf'],
  );
  
  bool docExists = true;
  int i = 0;
  String tempName = fileName;
  while (docExists) {
    if ((await FirestoreService().getUserDoc(tempName))!.exists) {
      tempName = "$fileName(${++i})";
    } else {
      docExists = false;
      fileName = tempName;
    }
  }

  if (result != null) {
    PDFDoc doc = await PDFDoc.fromPath(result.files.single.path.toString());
    String docText = await doc.text;
    getQuestions(docText, fileName);
  } else {
    return;
  }
}
