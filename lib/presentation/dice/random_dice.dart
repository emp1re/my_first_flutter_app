import 'package:flutter/material.dart';
import 'dart:math';

Map<int, String> diceMap = {
  0: 'assets/images/1_dot.png',
  1: 'assets/images/2_dots.png',
  2: 'assets/images/3_dots.png',
  3: 'assets/images/4_dots.png',
  4: 'assets/images/5_dots.png',
  5: 'assets/images/6_dots.png',
};


class RandomDice extends StatefulWidget {
  const RandomDice({super.key});
  @override
  State<RandomDice> createState() => _RandomDiceState();
}

class _RandomDiceState extends State<RandomDice> {
  final rand = Random();
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Image.asset(diceMap[num]!, width: 150, height: 150),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                num = rand.nextInt(6);
              });
            },
            child: const Icon(Icons.casino),
            
          ),
        ],
      ),
    );
  }
}
