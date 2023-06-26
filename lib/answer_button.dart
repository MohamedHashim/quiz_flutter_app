import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answer, this.onClick, {super.key});
  final String answer;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onClick,
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
        backgroundColor: const Color.fromARGB(183, 40, 100, 157),
        foregroundColor: const Color.fromARGB(229, 193, 219, 230),
      ),
      child: Text(
        answer,
        style: const TextStyle(fontSize: 22),
      ),
    );
  }
}
