import 'package:flutter/material.dart';
import 'package:quiz_flutter_app/data/questions.dart';
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
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];

  void navigateToQuestionsScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void navigateToResultScreen() {
    setState(() {
      activeScreen = 'result-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'start-screen';
      });
    }
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
            child: activeScreen == 'start-screen'
                ? StartScreen(navigateToQuestionsScreen)
                : QuestionsScreen(chooseAnswer)),
      ),
    );
  }
}
