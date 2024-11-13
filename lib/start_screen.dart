import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
          ),
          const Text('Start screen')
        ],
      ),
    );
  }
}
