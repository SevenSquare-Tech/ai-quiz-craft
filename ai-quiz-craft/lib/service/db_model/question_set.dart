import 'package:hive/hive.dart';
import 'package:ai-quiz-craft/service/firestore_db.dart';
part 'question_set.g.dart';

@HiveType(typeId: 1)
class QuestionSet extends HiveObject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String question;
  @HiveField(2)
  final String crctAns;
  @HiveField(3)
  final List<String> allAns;

  QuestionSet(
      {required this.id,
      required this.question,
      required this.crctAns,
      required this.allAns});

  factory QuestionSet.fromJson(Map<String, dynamic> parsedJson, String id) {
    return QuestionSet(
        id: id,
        question: parsedJson['question'],
        crctAns: parsedJson['crct_ans'],
        allAns: parsedJson['all_ans'].cast<String>());
  }
}

late Box localStorage;
Future setBox() async {
  localStorage = await Hive.openBox((FirestoreService().user!.displayName)!);
}
