import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result(this.resetQuiz, this.totalscore);

  final int totalscore;
  final VoidCallback resetQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(height: 38),
              Text(
                "You Scored:- $totalscore of 4",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
              ),
              onPressed: resetQuiz,
              child: const Text(
                'Reset Quiz',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
          ),
          const Text(
            'made by Aditya Ranjan das',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
