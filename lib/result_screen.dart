import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You answered X out of Y questions correctly!'),
            const SizedBox(height: 30),
            // 스크롤이 가능한 문제 결과 영역이 들어갈 예정
            const Text('List of answer and questions...'),
            // 스크롤이 가능한 문제 결과 영역이 들어갈 예정
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text('Restart Quiz!')),
          ],
        ),
      ),
    );
  }
}
