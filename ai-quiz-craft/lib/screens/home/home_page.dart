import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ai-quiz-craft/controllers/user_type_controller.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_button.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_loading.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_template.dart';
import 'package:ai-quiz-craft/screens/home/home.dart';
import 'package:ai-quiz-craft/screens/home/user_details.dart';
import 'package:ai-quiz-craft/service/firestore_db.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<String?> userFuture;
  
  @override
  initState() {
    super.initState();
    userFuture = FirestoreService().getUserType();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTemplate(
        body: FutureBuilder(
      future: userFuture,
      builder: (context, snapshot) {
        Widget ret = Container();
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data == "None") {
            ret = Builder(builder: (_) => const UserDetails());
          } else {
            Future.delayed(Duration.zero, () {
              Get.find<UserTypeController>()
                  .setUserType(snapshot.data as String);
            });
            ret = const Home();
          }
        } else {
          ret = const CustomLoading();
        }
        return ret;
      },
    ));
  }
}
