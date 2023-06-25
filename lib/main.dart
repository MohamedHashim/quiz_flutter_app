import 'package:flutter/material.dart';
import 'package:quiz_flutter_app/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 83, 88, 88),
                Color.fromARGB(255, 188, 183, 183)
              ]),
            ),
            child: const StartScreen()),
      ),
    );
  }
}
