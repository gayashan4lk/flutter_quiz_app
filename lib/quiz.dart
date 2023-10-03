import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions_data.dart';

import 'widgets/answer_button.dart';
import 'widgets/question_text.dart';

class Quiz extends StatelessWidget {
  Quiz({super.key});

  final shuffledAnsers = questions[0].answers.toList()..shuffle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.deepPurple,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              QuestionText(questions[0].question),
              ...shuffledAnsers.map((answer) => AnswerButton(answer.answer)),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_circle_left_sharp),
                    label: const Text("Back"),
                  ),
                  const SizedBox(width: 30),
                  ElevatedButton.icon(
                    onPressed: null,
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
