import 'package:flutter_quiz_app/models/quiz_answer.dart';
import 'package:flutter_quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    "What are the main building blocks of Flutter UIs?",
    <QuizAnswer>[
      QuizAnswer("Widgets", true),
      QuizAnswer("Components", false),
      QuizAnswer("Blocks", false),
      QuizAnswer("Functions", false),
    ],
  ),
  QuizQuestion(
    "How are Flutter UIs built?",
    <QuizAnswer>[
      QuizAnswer("By combining widgets in code", true),
      QuizAnswer("By combining widgets in a visual editor", false),
      QuizAnswer("By defining widgets in config files", false),
      QuizAnswer("By using XCode for iOS and Android Studio for Android", false),
    ],
  ),
  QuizQuestion(
    "What\'s the purpose of a StatefulWidget?",
    <QuizAnswer>[
      QuizAnswer("Update UI as data changes", true),
      QuizAnswer("Update data as UI changes", false),
      QuizAnswer("Ignore data changes", false),
      QuizAnswer("Render UI that does not depend on data", false),
    ],
  ),
  QuizQuestion(
    "Which widget should you try to use more often: StatelessWidget or StatefulWidget?",
    <QuizAnswer>[
      QuizAnswer("StatelessWidget", true),
      QuizAnswer("StatefulWidget", false),
      QuizAnswer("Both are equally good", false),
      QuizAnswer("None of the above", false),
    ],
  ),
  QuizQuestion(
    "What happens if you change data in a StatelessWidget?",
    <QuizAnswer>[
      QuizAnswer("The UI is not updated", true),
      QuizAnswer("The UI is updated", false),
      QuizAnswer("The closest StatefulWidget is updated", false),
      QuizAnswer("Any nested StatefulWidgets are updated", false),
    ],
  ),
  QuizQuestion(
    "How should you update data inside of StatefulWidgets?",
    <QuizAnswer>[
      QuizAnswer("By calling setState()", true),
      QuizAnswer("By calling updateData()", false),
      QuizAnswer("By calling updateUI()", false),
      QuizAnswer("By calling updateState()", false),
    ],
  ),
];
