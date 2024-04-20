import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 350,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text('Learn Flutter the  fun way!',
            style: TextStyle(
                color: Colors.white,
                fontSize: 26
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white
              ),
              icon: const Icon(Icons.arrow_forward),
              label: const Text(
                'Start Quiz',
              )
          )
        ],
      ),
    );
  }
}
