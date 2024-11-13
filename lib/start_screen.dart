import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

//* we'll only set this once when the start screen widget is created,
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        //* you can simply go to your Column and there set the mainAxisSize to mainAxisSize.min
        //* so that instead of taking all the available vertical space, which it will do by default,
        //* the Column widget will only take as minimal vertical space as needed.
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          const Text(
            'Start screen',
            style: TextStyle(
                color: Color.fromARGB(255, 180, 169, 200), fontSize: 24),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 180, 169, 200)),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
