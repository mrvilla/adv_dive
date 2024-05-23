import 'package:adv_dive/answer_button.dart';
import 'package:adv_dive/data/questions.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {

  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          AnswerButton(answerText: currentQuestion.answers[0], onTap: () {},),
          AnswerButton(answerText: currentQuestion.answers[1], onTap: () {},),
          AnswerButton(answerText: currentQuestion.answers[2], onTap: () {},),
          AnswerButton(answerText: currentQuestion.answers[3], onTap: () {},)
        ],
      ),
    );
  }
}
