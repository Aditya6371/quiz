import 'package:flutter/material.dart';
import 'package:quiz/widgets/result.dart';
import '../widgets/quiz.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _qindex = 0;
  var _totalscore = 0;

  final _questions = [
    {
      'qtext': "WHAT IS THE NATIONAL ANIMAL OF INDIA ?",
      'atext': [
        {'text': "LION", 'score': 0},
        {'text': "TIGER", 'score': 1},
        {'text': "ELEPHANT", 'score': 0},
        {'text': "MONKEY", 'score': 0}
      ],
    },
    {
      'qtext': "WHAT IS THE NATIONAL FLOWER OF INDIA ?",
      'atext': [
        {'text': "ROSE", 'score': 0},
        {'text': "TULIP", 'score': 0},
        {'text': "SUNFLOWER", 'score': 0},
        {'text': "LOTUS", 'score': 1}
      ],
    },
    {
      'qtext': "WHAT IS THE NATIONAL BIRD OF INDIA ?",
      'atext': [
        {'text': "PEACOCK", 'score': 1},
        {'text': "CROW", 'score': 0},
        {'text': "KITE", 'score': 0},
        {'text': "EAGLE", 'score': 0}
      ],
    },
    {
      'qtext': "WHAT IS THE NATIONAL FRUIT OF INDIA ?",
      'atext': [
        {'text': "PINEAPPLE", 'score': 0},
        {'text': "ORANGE", 'score': 0},
        {'text': "MANGO", 'score': 1},
        {'text': "APPLE", 'score': 0}
      ],
    }
  ];
  void resetquiz() {
    setState(() {
      _qindex = 0;
      _totalscore = 0;
    });
  }

  void answerchoosen(int score) {
    _totalscore = _totalscore + score;
    setState(() {
      _qindex = _qindex + 1;
    });
    print(_qindex);
    print(_totalscore);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "QUIZ",
          style: TextStyle(
              fontSize: 30,
              fontFamily: 'Ysabeau Infant',
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/IMG-20230713-WA0015.jpg"),
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: _qindex < _questions.length
            ? Quiz(
                _qindex,
                _questions,
                answerchoosen,
              )
            : Result(resetquiz, _totalscore),
      ),
    );
  }
}
