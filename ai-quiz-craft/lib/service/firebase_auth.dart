import 'package:firebase_auth/firebase_auth.dart';

import 'package:ai-quiz-craft/service/firestore_db.dart';



class Auth {
  late FirebaseAuth _auth;
  static Auth? _instance;

  Auth._internal() {
    _auth = FirebaseAuth.instance;
  }

  Auth.test(FirebaseAuth testAuth) {
    _instance = this;
    _auth = testAuth;
  }

  factory Auth() {
    _instance ??= Auth._internal();
    return _instance!;
  }

  
  FirebaseAuth get auth => _auth;

  Future<String> userLogin(String email, String password) async {
    late String res;
    try {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((_) {
        if (_auth.currentUser!.emailVerified) {
          res = "Verified";
          FirestoreService().user = _auth.currentUser;
        } else {
          res = "Not Verified";
        }
      });
    } on FirebaseAuthException catch (e) {
      res = e.message!;
    }
    return res;
  }

  Future<String> userSignup(String email, String password) async {
    late String res;
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((_) => _auth.currentUser!.sendEmailVerification())
          .then((_) => res = "Success");
      await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      res = e.message!;
    }
    return res;
  }

  Future<String> userSignout() async {
    late String res;
    try {
      await _auth.signOut().then((_) => res = 'Success');
    } on FirebaseAuthException catch (e) {
      res = e.message!;
    }
    return res;
  }
}
