import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //* var activeScreen = const StartScreen(); var makes it too specific

  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     // will re-run the build method
  //     activeScreen = const QuestionsScreen();
  //   });
  // }
  //* this approach doesn't require initState
  var activeScreen = 'start-screen';

// can use final here, because later we are just editing the existing list
  final List<String> selectedAnswers = [];
  void switchScreen() {
    setState(() {
      // will re-run the build method
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(context) {
    final screenWidget = activeScreen == 'start-screen'
        ? StartScreen(switchScreen)
        : QuestionsScreen(onSelectAnswer: chooseAnswer);
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          // child: activeScreen,
          child: screenWidget,
        ),
      ),
    );
  }
}
