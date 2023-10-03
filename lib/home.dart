import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.deepPurple,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Image.asset(
                  "assets/images/quiz-logo.png",
                  width: 200,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: const Text(
                  "Quiz App",
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, "/quiz");
                },
                icon: const Icon(Icons.arrow_circle_right_rounded),
                label: const Text("Start Quiz"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
