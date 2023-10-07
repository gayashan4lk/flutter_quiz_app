import 'package:flutter/material.dart';

class Scores extends StatelessWidget {
  const Scores({Key? key}) : super(key: key);

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
        alignment: Alignment.center,
        child: const SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Your Score is:"),
              Text("5/10"),
            ],
          ),
        ),
      ),
    );
  }
}
