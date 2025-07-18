import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

import 'package:ai-quiz-craft/custom_widgets/custom_template.dart';
import 'package:ai-quiz-craft/custom_widgets/render_img.dart';
import 'package:ai-quiz-craft/screens/home/home_page.dart';
import 'package:ai-quiz-craft/service/local_notification_service.dart';
import 'package:ai-quiz-craft/theme/font.dart';
import 'package:ai-quiz-craft/theme/palette.dart';

class Greetings extends StatefulWidget {
  const Greetings({Key? key}) : super(key: key);
  @override
  State<Greetings> createState() => _GreetingsState();
}

class _GreetingsState extends State<Greetings> {
  @override
  initState() {
    super.initState();
    localNotificationService = LocalNotificationService(context);

    fm.getInitialMessage().then((msg) {
      if (msg != null) {
        Get.offAll(() => const HomePage());
      }
    });

    FirebaseMessaging.onMessage.listen((msg) {
      if (msg.notification != null) {}

      localNotificationService.display(msg);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((msg) {
      Get.to(() => const HomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomTemplate(
        body: Builder(
      builder: (_) => Column(
        children: [
          RenderImage(
            path: 'assets/images/logo.png',
            expaned: true,
            color: Palette.theme,
            pngHeight: 100,
          ),
          RenderImage(
            path: 'assets/images/welcome.svg',
            expaned: true,
            svgWidth: MediaQuery.of(context).size.width - 50,
          ),
          Container(
            width: double.maxFinite - 20,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            alignment: Alignment.bottomCenter,
            child: Text(
              "Scroll up to continue",
              style: TextStyle(
                  fontFamily: fontFamily,
                  fontSize: 17,
                  fontWeight: Font.regular,
                  color: Palette.txtInput),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ));
  }
}
