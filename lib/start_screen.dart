import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() onSwitchScreen;

  StartScreen({required this.onSwitchScreen, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(160, 255, 255, 255),
            colorBlendMode: BlendMode.modulate,
          ),
          const SizedBox(height: 60),
          const Text(
            'Learn Flutter the fun way',
            style: TextStyle(fontSize: 23, color: Colors.white),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: onSwitchScreen,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.arrow_forward),
            label: Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
