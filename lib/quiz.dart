import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? _activeScreen;
  List<String> _selectedAnswers = [];

  @override
  void initState() {
    super.initState();
    _activeScreen = StartScreen(onSwitchScreen: switchScreen);
  }

  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);

    if (_selectedAnswers.length == questions.length) {
      setState(() {
        _activeScreen = ResultScreen(
          chosenAnswers: _selectedAnswers,
          onResultScreen: switchScreen,
        );
        _selectedAnswers = [];
      });
    }
  }

  void switchScreen() {
    setState(() {
      _activeScreen = QuestionScreen(onChooseAnswer: chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 59, 33, 104),
                const Color.fromARGB(255, 102, 57, 182),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: _activeScreen,
        ),
      ),
    );
  }
}
