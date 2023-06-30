import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_flutter_app/answer_button.dart';
import 'package:quiz_flutter_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onSelectedAnswer, {super.key});
  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIdx = 0;

  void nextQuestion(String answer) {
    widget.onSelectedAnswer(answer);
    setState(() {
      currentQuestionIdx++;
    });
  }

  @override
  Widget build(context) {
    final currentAnswers = questions[currentQuestionIdx];

    return Container(
      margin: const EdgeInsets.all(40),
      child: SizedBox(
        width: double.infinity, //use as much as you can
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                questions[currentQuestionIdx].question,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              ...currentAnswers.getShuffledAnswers().map(
                (answer) {
                  return AnswerButton(answer, () {
                    nextQuestion(answer);
                  });
                },
              )
            ]),
      ),
    );
  }
}
