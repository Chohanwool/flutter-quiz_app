import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        color:
                            data['user_answer'].toString() ==
                                    data['correct_answer']
                                ? const Color.fromARGB(255, 24, 103, 250)
                                : const Color.fromARGB(255, 247, 49, 148),
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            data['question'].toString(),
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            data['user_answer'].toString(),
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.purpleAccent,
                            ),
                          ),
                          Text(
                            data['correct_answer'].toString(),
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}
