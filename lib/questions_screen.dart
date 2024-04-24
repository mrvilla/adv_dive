import 'package:adv_dive/answer_button.dart';
import 'package:adv_dive/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {

    setState(() {
      // currentQuestionIndex = currentQuestionIndex + 1;
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(context) {
    // final currentQuestion = questions[0];
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child:  Container(
        margin: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    fontWeight: FontWeight.bold
                  )
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 24,
            ),
            // ...currentQuestion.answers.map((answer) {
            //   return AnswerButton(answerText: answer, onTap: () {});
            // }),
            // if you want to shuffle then add getShuffledAnswers
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answerText: answer, onTap: answerQuestion);
            })
          ],
        ),
      ),
    );
  }
}
