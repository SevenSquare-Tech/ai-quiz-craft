import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ai-quiz-craft/controllers/quiz_controller.dart';

import 'package:ai-quiz-craft/controllers/user_type_controller.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_loading.dart';
import 'package:ai-quiz-craft/custom_widgets/render_img.dart';
import 'package:ai-quiz-craft/screens/home/check_list.dart';
import 'package:ai-quiz-craft/screens/home/custom_button_wrapper.dart';
import 'package:ai-quiz-craft/screens/home/exit_popup.dart';
import 'package:ai-quiz-craft/screens/home/logout_popup.dart';
import 'package:ai-quiz-craft/screens/home/quiz_code_popup.dart';
import 'package:ai-quiz-craft/screens/import/import.dart';
import 'package:ai-quiz-craft/screens/review/teacher_review.dart';
import 'package:ai-quiz-craft/service/db_model/question_set.dart';
import 'package:ai-quiz-craft/service/firestore_db.dart';
import 'package:ai-quiz-craft/service/local_notification_service.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<void> pushToken() async {
    String? token = await fm.getToken();
    String? oldToken = localStorage.get('token');
    if (oldToken != token) {
      localStorage.put('token', token!);
      await FirestoreService().saveTokenToDatabase(token);
    }
    fm.onTokenRefresh.listen(FirestoreService().saveTokenToDatabase);
  }

  @override
  initState() {
    super.initState();
    setBox();
    pushToken();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserTypeController>(builder: (controller) {
      return Builder(
        builder: (context) => Column(
          children: [
            const RenderImage(
              path: 'assets/images/home.svg',
              expaned: true,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: Column(children: [
                CustomButtonWrapper(
                    key: const Key('btn-import'),
                    text: "Import PDF",
                    onTap: () => Get.to(() => const ImportFile())),
                CustomButtonWrapper(
                    key: const Key('btn-q-bank'),
                    text: "Question Bank",
                    onTap: () {
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (_) {
                            Get.find<UserTypeController>().setMode(Mode.self);
                            checkQuestionBank();
                            return const CustomLoading();
                          });
                    }),
                controller.userType == UserType.student
                    ? CustomButtonWrapper(
                        key: const Key('btn-attempt-quiz'),
                        text: "Attempt quiz",
                        onTap: () {
                          showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext cntxt) {
                                return StatefulBuilder(
                                    builder: (cntxt, setState) {
                                  Get.find<UserTypeController>()
                                      .setMode(Mode.quiz);
                                  return const QuizCodePopup();
                                });
                              });
                        })
                    : Container(),
                CustomButtonWrapper(
                    key: const Key('btn-review'),
                    text: "Review quizzes",
                    onTap: () async {
                      if (controller.userType == UserType.student) {
                        Get.find<UserTypeController>().setMode(Mode.review);
                        checkQuestionBank();
                      } else {
                        Get.find<QuizController>().setupQuizInfo(
                            await FirestoreService().getQuizInfo());
                        Get.to(() => TeacherReview());
                      }
                    }),
                CustomButtonWrapper(
                    key: const Key('btn-log-out'),
                    text: "Log out",
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) {
                            return const LogoutPopup();
                          });
                    }),
                CustomButtonWrapper(
                    key: const Key('btn-quit'),
                    text: "Quit",
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) {
                            return const ExitPopup();
                          });
                    }),
              ]),
            )
          ],
        ),
      );
    });
  }
}
