import 'package:flutter/material.dart';

import 'data/questions_data.dart';

class Scores extends StatelessWidget {
  const Scores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final results = ModalRoute.of(context)?.settings.arguments as List<bool>;

    final myComp = questions.map((ques) => {
          "question": ques.question,
          "isCorrect": (results[questions.indexOf(ques)]),
          "correctAnswer": ques.answers.where((answer) => answer.isCorrect).map((answer) => answer.text).first,
        });

    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.deepPurple,
        ),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
                child: Text("Results"),
              ),
              ...myComp.map(
                (item) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item["question"].toString()),
                    Text(item["isCorrect"] as bool ? "Correct" : "Wrong"),
                    Text("Correct Answer: ${item["correctAnswer"].toString()}"),
                    const SizedBox(height: 20)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
