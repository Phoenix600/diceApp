import 'package:flutter/material.dart';
import 'gardient_container.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Constrcutor
  const MyApp({Key? key}) : super(key: key);

  // BuildMethod
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer( Color.fromARGB(255, 33, 5, 109),
             Color.fromARGB(255, 68, 21, 149)),
      ),
    );
  }
}
