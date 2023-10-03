import 'quiz_answer.dart';

class QuizQuestion {
  const QuizQuestion(this.question, this.answers);

  final String question;
  final List<QuizAnswer> answers;
}
