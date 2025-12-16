import 'package:flutter/material.dart';
import 'package:my_first_flutter_application/presentation/dice/dice_screen.dart';
import 'package:my_first_flutter_application/presentation/quiz/quiz_game.dart';

enum pageType { quiz, dice }

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  void nextPage({required BuildContext context, required String pageType}) {
    // Navigate to the game screen or start the game logic

    if (pageType == 'dice') {
      Navigator.push(
        context,
        MaterialPageRoute<void>(builder: (context) => const DiceScreen()),
      );
    } else if (pageType == 'quiz') {
      Navigator.push(
        context,
        MaterialPageRoute<void>(builder: (context) => const Quiz()),
      );
    } else {
      // Handle unknown page type
      throw Exception('Unknown page type: $pageType');
    }
  }

  @override
  Widget build(BuildContext context) {
  
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.yellow, Colors.red, Colors.blue],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NewTextContainer(
              text: "Hello, Flutter!",
              Style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            NewTextContainer(
              text: "Welcome to the Flutter App.",
              Style: const TextStyle(fontSize: 20, color: Colors.white70),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white),
                textStyle: const TextStyle(color: Colors.white),
              ),
              onPressed: () => nextPage(context: context, pageType: 'quiz'),
              child: const Text(
                'Quiz Game',
                style: TextStyle(color: Color.fromARGB(255, 208, 199, 255)),
              ),
            ),
            SizedBox(height: 5),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white),
                textStyle: const TextStyle(color: Colors.white),
              ),
              onPressed: () => nextPage(context: context, pageType: 'dice'),
              child: const Text(
                'Dice Game',
                style: TextStyle(color: Color.fromARGB(255, 208, 199, 255)),
              ),
            ),
            // RandomDice()
          ],
        ),
      ),
    );
  }
}

class NewTextContainer extends StatelessWidget {
  const NewTextContainer({super.key, required this.text, required this.Style});

  final String text;
  final TextStyle Style;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Style);
  }
}
