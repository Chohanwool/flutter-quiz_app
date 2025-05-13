import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 200),
          const SizedBox(height: 60),
          const Text(
            'Learn Flutter the fun way',
            style: TextStyle(fontSize: 23, color: Colors.white),
          ),
          const SizedBox(height: 30),
          OutlinedButton(
            onPressed: () {},
            child: Text('Start Quiz', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
