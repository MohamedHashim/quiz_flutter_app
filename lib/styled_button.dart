import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 50,
          height: 50,
        ),
        const Text(
          'Start Quiz',
          style: TextStyle(fontSize: 24),
        )
      ],
    );
  }
}
