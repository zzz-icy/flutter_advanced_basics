import 'package:adv_basics/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsSate();
  }
}

class _QuestionsSate extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'The questions...',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          AnswerButton('11'),
          AnswerButton('11'),
          AnswerButton('11'),
        ],
      ),
    );
  }
}
