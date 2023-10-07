import 'package:flutter/material.dart';

import '../models/quiz_answer.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answer, this.handleOnPressed, {super.key});

  //final String text;
  final QuizAnswer answer;
  final Function(QuizAnswer) handleOnPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.75,
      ),
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      child: FilledButton.tonal(
        onPressed: () {
          handleOnPressed(answer);
        },
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 65, 48, 110),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(answer.text),
      ),
    );
  }
}
