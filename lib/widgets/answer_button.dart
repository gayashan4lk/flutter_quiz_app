import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.text, {super.key});

  final String text;

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
          print("Pressed");
        },
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 65, 48, 110),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
