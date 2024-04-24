
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You answered x out of y questions correctly',
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold
                  )
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24), 
            const Text(
              'List of answers and questions',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            TextButton(
                onPressed: () {},
                child: const Text('Restart Quiz!'))
          ],
        ),
      ),
    );
  }
}
