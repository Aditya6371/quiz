import 'package:flutter/material.dart';
import 'package:quiz/widgets/answers.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final int qindex;
  final List<Map<String, Object>> question;
  final Function anschoosen;

  Quiz(this.qindex, this.question, this.anschoosen);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        questions(question[qindex]['qtext'].toString()),
        const SizedBox(
          height: 70,
        ),
        ...(question[qindex]['atext'] as List<Map<String, Object>>)
            .map((atext) {
          return Answers(() => anschoosen(atext['score'] as int),
              atext['text'].toString());
        })
      ],
    );
  }
}
