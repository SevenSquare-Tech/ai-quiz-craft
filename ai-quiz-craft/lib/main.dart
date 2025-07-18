import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:ai-quiz-craft/custom_widgets/custom_template.dart';
import 'package:ai-quiz-craft/screens/landing/greeting.dart';
import 'package:ai-quiz-craft/screens/auth/signup.dart';
import 'package:ai-quiz-craft/screens/auth/verify.dart';
import 'package:ai-quiz-craft/screens/home/home_page.dart';
import 'package:ai-quiz-craft/service/db_model/question_set.dart';
import 'package:ai-quiz-craft/service/local_notification_service.dart';
import 'package:ai-quiz-craft/service/firestore_db.dart';
import 'package:ai-quiz-craft/init_controllers.dart';
import 'package:ai-quiz-craft/theme/palette.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter();
  await initServices();
  await initControllers();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Palette.transparent,
  ));

  runApp(const Root());
}
class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  bool canScroll = true;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: CustomTemplate(
      body: PageView(
        scrollDirection: Axis.vertical,
        physics: canScroll
            ? const ScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        children: [
          const Greetings(),
          (FirestoreService().user == null)
              ? const SignUp()
              : (FirestoreService().user!.emailVerified)
                  ? const HomePage()
                  : const VerifyEmail(),
        ],
        onPageChanged: (n) => {setState(() => canScroll = false)},
      ),
    ));
  }
}
initServices() async {
  Hive.registerAdapter(QuestionSetAdapter());
  fm = FirebaseMessaging.instance;
}
