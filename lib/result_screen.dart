import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  final List<String> chosenAnswers;
  final void Function() onResultScreen;

  const ResultScreen({
    required this.chosenAnswers,
    required this.onResultScreen,
    super.key,
  });

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions =
        summaryData
            .where((data) => data['user_answer'] == data['correct_answer'])
            .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions coreectly',
              style: const TextStyle(
                fontSize: 25,
                color: Color.fromARGB(155, 255, 255, 255),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // 스크롤이 가능한 문제 결과 영역이 들어갈 예정
            QuestionsSummary(summaryData),
            // 스크롤이 가능한 문제 결과 영역이 들어갈 예정
            const SizedBox(height: 30),
            TextButton.icon(
              onPressed: onResultScreen,
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              icon: Icon(Icons.restart_alt),
              label: Text(
                'Restart Quiz!',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
