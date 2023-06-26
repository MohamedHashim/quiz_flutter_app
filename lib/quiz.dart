import 'package:flutter/material.dart';
import 'package:quiz_flutter_app/questions_screen.dart';
import 'package:quiz_flutter_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(navigateToQuestionsScreen);
  }

  void navigateToQuestionsScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 83, 88, 88),
                Color.fromARGB(255, 188, 183, 183)
              ]),
            ),
            child: activeScreen),
      ),
    );
  }
}
