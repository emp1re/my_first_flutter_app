

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
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
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/brain.png', width: 150, height: 150, color: const Color.fromARGB(202, 255, 255, 255),),
            OutlinedButton.icon(onPressed: () {
              startQuiz();
            }, 
            icon: const Icon(Icons.arrow_right_alt, color: Colors.white,),
            label: const Text('Start Quiz', style: TextStyle(color: Colors.white),))
          ],
        )
      ),
    ); 
  }
}