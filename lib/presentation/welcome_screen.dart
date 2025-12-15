import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.yellow,
                Colors.red,
                Colors.blue,
                ],
            ),
          ),
          child: Center(child: Text(
            style: TextStyle(fontSize: 24, color: Colors.white),
            'Hello, Flutter!')),
        );
  }
}