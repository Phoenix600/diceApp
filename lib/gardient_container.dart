import 'package:flutter/material.dart';

import './dice_roller.dart';

const Alignment start = Alignment.topLeft;
const Alignment end = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // Data members
  final Color primary;
  final Color secondary;

  // Paramterised Constructor
  const GradientContainer(this.primary, this.secondary, {super.key});

  // Alternative Constructor
  const GradientContainer.purple({super.key})
      : primary = Colors.deepPurple,
        secondary = Colors.indigoAccent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: start,
          end: end,
          colors: <Color>[primary, secondary],
        ),
      ),
      child: const DiceRoller(),
    );
  }
}
