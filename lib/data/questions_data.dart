import 'package:flutter_quiz_app/models/quiz_answer.dart';
import 'package:flutter_quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    "What are the main building blocks of Flutter UIs?",
    <QuizAnswer>[
      QuizAnswer("Widgets", true),
      QuizAnswer("Components", true),
      QuizAnswer("Blocks", true),
      QuizAnswer("Functions", true),
    ],
  ),
  QuizQuestion(
    "How are Flutter UIs built?",
    <QuizAnswer>[
      QuizAnswer("By combining widgets in code", true),
      QuizAnswer("By combining widgets in a visual editor", true),
      QuizAnswer("By defining widgets in config files", true),
      QuizAnswer("By using XCode for iOS and Android Studio for Android", true),
    ],
  ),
  QuizQuestion(
    "What\'s the purpose of a StatefulWidget?",
    <QuizAnswer>[
      QuizAnswer("Update UI as data changes", true),
      QuizAnswer("Update data as UI changes", true),
      QuizAnswer("Ignore data changes", true),
      QuizAnswer("Render UI that does not depend on data", true),
    ],
  ),
  QuizQuestion(
    "Which widget should you try to use more often: StatelessWidget or StatefulWidget?",
    <QuizAnswer>[
      QuizAnswer("StatelessWidget", true),
      QuizAnswer("StatefulWidget", true),
      QuizAnswer("Both are equally good", true),
      QuizAnswer("None of the above", true),
    ],
  ),
  QuizQuestion(
    "What happens if you change data in a StatelessWidget?",
    <QuizAnswer>[
      QuizAnswer("The UI is not updated", true),
      QuizAnswer("The UI is updated", true),
      QuizAnswer("The closest StatefulWidget is updated", true),
      QuizAnswer("Any nested StatefulWidgets are updated", true),
    ],
  ),
  QuizQuestion(
    "How should you update data inside of StatefulWidgets?",
    <QuizAnswer>[
      QuizAnswer("By calling setState()", true),
      QuizAnswer("By calling updateData()", true),
      QuizAnswer("By calling updateUI()", true),
      QuizAnswer("By calling updateState()", true),
    ],
  ),
];
