import 'dart:math';

import 'package:flutter/material.dart';

// Build Methods Doesn't exists in
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  /*
   * State is type provided by flutter, it is a generic value type,  
   * It reutrns the object of class State<Parent> type 
   * 
   * State class is really meant to use internally 
   */
  // @createState() returns the State Object
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// private class
class _DiceRollerState extends State<DiceRoller> {
  Random randomizer = Random();

  String activeDiceImage = "assets/images/dice-1.png";

  void rollDice() {
    int currentDiceImageIndex = randomizer.nextInt(6) + 1;
    setState(() {
      activeDiceImage = "assets/images/dice-$currentDiceImageIndex.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(activeDiceImage, width: 210),
          TextButton(
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                )),
            onPressed: rollDice,
            child: const Text("Roll Dice"),
          )
        ],
      ),
    );
  }
}
