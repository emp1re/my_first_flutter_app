

import 'package:flutter/material.dart';
import 'package:my_first_flutter_application/presentation/quiz/question_screen.dart';
import 'question_storage.dart';
import 'quiz_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.purpleAccent, Colors.deepPurple, Colors.indigo],
        ),
      ),
      child: activeScreen == 'start-screen' ? StartScreen(switchScreen) : const QuestionScreen(),
    ); 
  }
}