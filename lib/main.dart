import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/global_layout.dart';

import 'home.dart';
import 'quiz.dart';
import 'shop.dart';
import 'about.dart';
import 'contact.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz App by Gayashan",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
      routes: {
        '/quiz': (context) => Quiz(),
        '/shop': (context) => const Shop(),
        '/about': (context) => const About(),
        '/contact': (context) => const Contact(),
      },
      initialRoute: '/',
    );
  }
}
