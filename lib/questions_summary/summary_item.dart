import 'package:adv_dive/questions_summary/question_id.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(
      this.itemData,
      {super.key}
      );

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = itemData['user_answer'] == itemData['correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 16
      ),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuestionId(
              isCorrectAnswer: isCorrectAnswer,
              questionIndex: itemData['question_index'] as int,
            ),
            const SizedBox(
                width: 16
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemData['question'] as String,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                      height: 8
                  ),
                  Text(
                      itemData['user_answer'] as String
                  ),
                  Text(
                    itemData['correct_answer'] as String,
                    style: const TextStyle(
                        color: Colors.blueAccent
                    ),
                  ),
                ],
              ),
            )
          ]
      ),
    );
  }
}
