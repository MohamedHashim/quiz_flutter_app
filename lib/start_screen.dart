import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.navigateToQuestionsScreen, {super.key});

  final Function() navigateToQuestionsScreen;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 228, 228, 222),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Learn flutter the fun way!",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: navigateToQuestionsScreen,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 24),
            ),
          )
        ],
      ),
    );
  }
}
