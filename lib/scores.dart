import 'package:flutter/material.dart';

class Scores extends StatelessWidget {
  const Scores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final results = ModalRoute.of(context)?.settings.arguments as List<bool>;

    print(results);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.deepPurple,
        ),
        alignment: Alignment.center,
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...results.map((result) => Text(result.toString())),
            ],
          ),
        ),
      ),
    );
  }
}
