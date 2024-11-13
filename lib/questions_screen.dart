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
    return const Text('QuestionsScreen');
  }
}
