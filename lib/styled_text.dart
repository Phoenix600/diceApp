import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;

  const StyledText({super.key, required this.text});
  // const StyledText(String text, {super.key}) : this.text = text;
  // const StyledText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Passed Text : $text",
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 32,
      ),
    );
  }
}
