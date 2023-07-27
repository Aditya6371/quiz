import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  Answers(
    this.ans,
    this.anstext,
    this.score,
  );
  final int score;
  final VoidCallback ans;
  final String anstext;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.cyan,
        ),
        onPressed: () => ans(),
        child: Text(
          anstext,
          style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontFamily: "Ysabeau Infant",
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
