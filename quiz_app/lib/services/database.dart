import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  // Add Quiz
  Future<void> addQuizData(Map quizData, String quizId) async {
    await Firestore.instance
        .collection('Quiz')
        .document(quizId)
        .setData(quizData)
        .catchError((e) {
      print(e.toString());
    });
  }

  // Add Question
  Future<void> addQuestionData(Map questionData, String quizId) async {
    await Firestore.instance
        .collection("Quiz")
        .document(quizId)
        .collection("QNA")
        .add(questionData)
        .catchError((e) {
      print(e);
    });
  }

  getQuizezData() async {
    return await Firestore.instance.collection("Quiz").snapshots();
  }

  getQuizData(String quizId) async {
    return await Firestore.instance.collection("Quiz").document(quizId).collection("QNA").getDocuments();
  }
}
