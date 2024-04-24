import 'package:adv_dive/questions_screen.dart';
import 'package:adv_dive/start_screen.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    // var switchScreenWidget = activeScreen == 'start-screen'
    //     ? StartScreen(switchScreen)
    //     : const QuestionsScreen();
    
    // alternative way
    Widget switchScreenWidget = StartScreen(switchScreen);
    if(activeScreen == 'questions-screen') {
      switchScreenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                color: Colors.black
            ),
            child: switchScreenWidget,
        ),
      ),
    );
  }
}
