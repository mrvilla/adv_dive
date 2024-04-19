import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black54
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
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
              OutlinedButton(
                  onPressed: () {debugPrint('Received click');},
                  child: const Text(
                    'Start Quiz',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    ),
  ));
}
