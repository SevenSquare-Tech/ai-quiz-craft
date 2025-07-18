import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:ai-quiz-craft/service/firebase_auth.dart';

class FirestoreService {
  late User? _user;
  late CollectionReference _users;
  late FirebaseFunctions fFunc;

  static FirestoreService? _instance;
  
  FirestoreService._internal() {
    _user = Auth().auth.currentUser;
    _users = FirebaseFirestore.instance.collection("users");
    fFunc = FirebaseFunctions.instance;
  }

  FirestoreService.test(
      User user, CollectionReference users, FirebaseFunctions func) {
    _instance = this;
    _user = user;
    _users = users;
    fFunc = func;
  }
  
  factory FirestoreService() {
    _instance ??= FirestoreService._internal();
    return _instance!;
  }
  
  set user(User? user) => _user = user!;
  User? get user => _user;
  
  set users(CollectionReference users) => _users = users;
      
  Future<String?> getUserType() async {
    return await _users.doc(_user!.uid).get().then((docSnap) {
      if (docSnap.exists) {
        Map<String, dynamic> data = docSnap.data() as Map<String, dynamic>;
        if (data['userType'] != null) {
          return data['userType'];
        }
      }
      return "None";
    }).onError((error, stackTrace) => error.toString());
  }
        
  Future<bool> getGeneratorStatus() async {
    return await _users.doc(_user!.uid).get().then((docSnap) {
      if (docSnap.exists) {
        Map<String, dynamic> data = docSnap.data() as Map<String, dynamic>;
        return data['GeneratorWorking'];
      }
    }).onError((error, stackTrace) => error.toString());
  }
  
  Future<DocumentSnapshot?> getUserDoc(String colID) async =>
      _users.doc(_user!.uid).collection(colID).doc('0').get();
  
  Future<List<dynamic>> getQuestionnaireNameList() async {
    HttpsCallable callable = fFunc.httpsCallable('sendSubCollectionIDs');
    return await callable.call().then((value) => value.data['ids']);
  }
  
  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> getQuestionnaire(
      String colID, String userID) async {
    return await _users
        .doc(userID == "" ? _user!.uid : userID)
        .collection(colID)
        .get()
        .then((value) => value.docs.map((doc) => doc).toList());
  }
  
  Future<Map<String, dynamic>> getQuizInfo() async {
    return await _users.doc(_user!.uid).get().then((docSnap) {
      if (docSnap.exists) {
        Map<String, dynamic> data = docSnap.data() as Map<String, dynamic>;
        return data['quizID'];
      }
    }).onError((error, stackTrace) => error.toString());
  }
      
  Future<bool> saveTokenToDatabase(String token) async {
    HttpsCallable callable = fFunc.httpsCallable('storeUserInfo');
    return await callable.call(<String, dynamic>{
      'token': token,
    }).then((value) => value.data['status'] == 200);
  }
        
  Future<bool> saveUser(bool isFirstTime,
      {String name = "", String type = "", bool state = false}) async {
    Map<String, dynamic> dict =
        isFirstTime ? {'name': name, 'userType': type} : {'isWaiting': state};
    HttpsCallable callable = fFunc.httpsCallable('storeUserInfo');
    return await callable
        .call(dict)
        .then((value) => value.data['status'] == 200);
  }
      
  Future<bool> generateQuiz(String quizID) async {
    HttpsCallable callable = fFunc.httpsCallable('addQuiz');
    return await callable.call(<String, dynamic>{'quizID': quizID}).then(
        (value) => value.data['status'] == 200);
  }
      
  Future<bool> sendScore(String quizID, double score, String author) async {
    HttpsCallable callable = fFunc.httpsCallable('updateScore');
    return await callable.call(<String, dynamic>{
      'quizID': quizID,
      'score': score,
      'author': author
    }).then((value) => value.data['status'] == 200);
  }
      
  Future<bool> sendUserType(
    String str,
    bool isTeacher,
  ) async {
    User? user = Auth().auth.currentUser;

    await user!.reload();
    await user.updateDisplayName(str);
    await user.reload();
    FirestoreService().user = Auth().auth.currentUser;

    return await saveUser(true,
        name: str, type: isTeacher ? 'Teacher' : 'Student');
  }
      
  Future<bool> deleteQuestions(String name, List<String> qID) async {
    HttpsCallable callable = fFunc.httpsCallable('dltQuestions');
    return await callable.call(<String, dynamic>{
      'col': name,
      'qID': qID,
    }).then((value) => value.data['status'] == 200);
  }
}
