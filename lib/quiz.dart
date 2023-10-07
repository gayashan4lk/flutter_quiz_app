import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions_data.dart';
import 'package:flutter_quiz_app/models/quiz_answer.dart';

import 'widgets/answer_button.dart';
import 'widgets/question_text.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int indexOfQues = 0;
  late List<bool> answers;

  @override
  void initState() {
    indexOfQues = 0;
    answers = List<bool>.generate(questions.length, (index) => false);
    super.initState();
  }

  List<QuizAnswer> shuffleAnswers(List<QuizAnswer> answers) {
    var shuffledAnswers = answers.toList()..shuffle();
    return shuffledAnswers;
  }

  dynamic handlePressNextBtn() {
    if ((questions.length - 1) > indexOfQues) {
      return setState(() {
        indexOfQues++;
      });
    } else {
      return null;
    }
  }

  dynamic handlePressPrevBtn() {
    if (0 < indexOfQues) {
      return setState(() {
        indexOfQues--;
      });
    } else {
      return null;
    }
  }

  handleAnswerSelect(QuizAnswer answer){
    answers[indexOfQues] = answer.isCorrect;
    print(answers);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.deepPurple,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 30),
              QuestionText(questions[indexOfQues].question),
              ...shuffleAnswers(questions[indexOfQues].answers).map((answer) =>
                  AnswerButton(answer, handleAnswerSelect)),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton.icon(
                    onPressed: handlePressPrevBtn,
                    icon: const Icon(Icons.arrow_circle_left_sharp),
                    label: const Text("Prev"),
                  ),
                  const SizedBox(width: 30),
                  ElevatedButton.icon(
                    onPressed: handlePressNextBtn,
                    icon: const Icon(Icons.arrow_circle_right_sharp),
                    label: const Text("Next"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
