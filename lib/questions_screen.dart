import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quiz_flutter_app/answer_button.dart';
import 'package:quiz_flutter_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentAnswers = questions[0].getShuffledAnswers();
  @override
  Widget build(context) {
    setState(() {});
    return Container(
      margin: const EdgeInsets.all(40),
      child: SizedBox(
        width: double.infinity, //use as much as you can
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                questions[0].question,
                style: const TextStyle(
                  fontSize: 26,
                  color: Colors.amber,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              ...currentAnswers.map((answer) => AnswerButton(answer, () {})),
            ]),
      ),
    );
  }
}
