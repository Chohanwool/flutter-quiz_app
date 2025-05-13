import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<StatefulWidget> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('The question..'),
          const SizedBox(height: 30),
          ElevatedButton(onPressed: () {}, child: const Text('Answer 1')),
          ElevatedButton(onPressed: () {}, child: const Text('Answer 1')),
          ElevatedButton(onPressed: () {}, child: const Text('Answer 1')),
        ],
      ),
    );
  }
}
