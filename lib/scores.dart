import 'package:flutter/material.dart';

import 'data/questions_data.dart';

class Scores extends StatelessWidget {
  const Scores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final results = ModalRoute.of(context)?.settings.arguments as List<bool>;

    final answerData = questions.map((ques) => {
          "question": ques.question,
          "isCorrect": (results[questions.indexOf(ques)]),
          "correctAnswer": ques.answers.where((answer) => answer.isCorrect).map((answer) => answer.text).first,
        });

    return Scaffold(
      appBar: AppBar(
        title: const Text("Scores"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.deepPurple,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 10, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: const Text(
                    "Your Results",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                ...answerData.map((item) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item["question"].toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          item["isCorrect"] == true ? "Correct" : "Incorrect",
                          style: TextStyle(
                            color: item["isCorrect"] == true ? Colors.green : Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        item["isCorrect"] == false
                            ? Text(
                                "Correct Answer: ${item["correctAnswer"].toString()}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w100,
                                ),
                              )
                            : const SizedBox(),
                        const Padding(padding: EdgeInsets.only(bottom: 15)),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
