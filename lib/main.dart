import 'package:flutter/material.dart';

import 'home.dart';
import 'quiz.dart';
import 'shop.dart';
import 'about.dart';
import 'contact.dart';
import 'scores.dart';

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
        '/scores': (context) => const Scores(),
        '/shop': (context) => const Shop(),
        '/about': (context) => const About(),
        '/contact': (context) => const Contact(),
      },
      initialRoute: '/',
    );
  }
}
