import 'package:flutter/material.dart';

class questions extends StatelessWidget {
  final String qtext;
  questions(
    this.qtext,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(width: 4, color: Colors.white24),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Text(
        qtext,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: Colors.black,
            fontSize: 34,
            fontFamily: 'Ysabeau Infant',
            fontWeight: FontWeight.w900),
      ),
    );
  }
}
