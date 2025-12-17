import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_flutter_application/presentation/dice/dice_screen.dart';
import 'package:my_first_flutter_application/presentation/quiz/quiz_main.dart';
import 'package:my_first_flutter_application/presentation/garage_sales/screens/home/home_screen.dart';
import 'package:my_first_flutter_application/presentation/stock/stock_screen.dart';

enum pageType { quiz, dice, garage }

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  void nextPage({required BuildContext context, required String pageType}) {
  
    switch (pageType) {
      case 'dice':
        Navigator.push(
          context,
          MaterialPageRoute<void>(builder: (context) => const DiceScreen()),
        );
        break;
      case 'quiz':
        Navigator.push(
          context,
          MaterialPageRoute<void>(builder: (context) => const Quiz()),
        );
        break;
      case 'garage':
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (context) => const HomeScreen(),
          ), 
        );
        break;
        case 'stock':
        Navigator.push(
          context,
          MaterialPageRoute<void>(builder: (context) => ProviderScope(child: const StockScreen())),
        );
        break;
      default:
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
            MenuButton(
              text: 'Quiz Game',
              onPressed: () => nextPage(context: context, pageType: 'quiz'),
            ),
            SizedBox(height: 5),
            MenuButton(
              text: 'Dice Game',
              onPressed: () => nextPage(context: context, pageType: 'dice'),
            ),
            SizedBox(height: 5),
            MenuButton(
              text: 'Garage Sales',
              onPressed: () => nextPage(context: context, pageType: 'garage'),
            ),
            SizedBox(height: 5),
            MenuButton(text: "Stock game",
            onPressed: () => nextPage(context: context, pageType: 'stock'),
            ),
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

class MenuButton extends StatelessWidget {
  const MenuButton({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.white),
        textStyle: const TextStyle(color: Colors.white),
        minimumSize: const Size(150, 40),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(color: Color.fromARGB(255, 208, 199, 255)),
      ),
    );
  }
}
