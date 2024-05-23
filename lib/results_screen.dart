
import 'package:adv_dive/data/questions.dart';
import 'package:adv_dive/questions_summary/questions_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.onRestart,
    required this.chosenAnswers
  });

  final List<String> chosenAnswers;
  final void Function() onRestart;

  // List<Map<String, Object>> getSummaryData() {
  //   final List<Map<String, Object>> summary = [];
  //
  //   for (var i = 0; i < chosenAnswers.length; i += 1) {
  //     summary.add({
  //       'question_index' : i,
  //       'question': questions[i].text,
  //       'correct_answer': questions[i].answers[0],
  //       'user_answer': chosenAnswers[i]
  //     });
  //   }
  //
  //   return summary;
  // }

  // another way to use this getSummaryData is the get
  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i += 1) {
      summary.add({
        'question_index' : i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    // by using the get method you do not need the getSummaryData() variable
    // final summaryData = getSummaryData();

    final numTotalQuestions = questions.length;

    // final numCorrectQuestions = summaryData.where((data) {
    //   return data['user_answer'] == data['correct_answer'];
    // }).length;

    final numCorrectQuestions = summaryData.where((data) =>
      data['user_answer'] == data['correct_answer']
    ).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly',
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  )
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            QuestionsSummary(summaryData),
            const SizedBox(height: 24),
            TextButton(
                onPressed: onRestart,
                child: const Text('Restart Quiz!'))
          ],
        ),
      ),
    );
  }
}
