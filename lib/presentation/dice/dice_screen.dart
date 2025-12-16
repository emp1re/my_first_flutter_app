import 'package:flutter/material.dart';
import 'package:my_first_flutter_application/presentation/dice/random_dice.dart';

class DiceScreen extends StatelessWidget {
  const DiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.orangeAccent, Colors.deepOrange, Colors.redAccent],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Roll the Dice!',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
              RandomDice(),
              SizedBox(height: 20,),
              BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                
              ),
            ],
          )
        ),
      ),
    );
  }
}