import 'package:adv_dive/data/questions.dart';
import 'package:adv_dive/questions_screen.dart';
import 'package:adv_dive/results_screen.dart';
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
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    // var switchScreenWidget = activeScreen == 'start-screen'
    //     ? StartScreen(switchScreen)
    //     : const QuestionsScreen();
    
    // alternative way
    Widget switchScreenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      //switchScreenWidget = const QuestionsScreen();
      // lifting up the state
      switchScreenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      switchScreenWidget = const ResultsScreen();
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
