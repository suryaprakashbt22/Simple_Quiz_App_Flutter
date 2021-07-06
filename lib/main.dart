import 'package:flutter/material.dart';
import 'package:myapp/result.dart';
//import './question.dart';
//import './ans.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _i = 0;
  var _totalScore = 0;
  /*var*/ final _questions = const [
    {
      "qText": "What\'s the Capital of India?",
      "Answerq": [
        {"text": "Mumbai", "score": 0},
        {"text": "Indore", "score": 0},
        {"text": "Delhi", "score": 10},
        {"text": "Kolkata", "score": 0}
      ]
    },
    {
      "qText": "What\'s the National Animal of India?",
      "Answerq": [
        {"text": "Tiger", "score": 10},
        {"text": "Elephant", "score": 0},
        {"text": "Lion", "score": 0},
        {"text": "Giraffe", "score": 0}
      ]
    },
    {
      "qText": "What\'s the National language of India?",
      "Answerq": [
        {"text": "Bengali", "score": 0},
        {"text": "Hindi", "score": 10},
        {"text": "Kannada", "score": 0},
        {"text": "Marathi", "score": 0}
      ]
    },
  ];
  void resetQuiz() {
    setState(() {
      _i = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_i < _questions.length) {
      print("More questions are present!");
    }
    setState(() {
      _i = _i + 1;
    });
    print('Answer chosen!');

    print(_i);
  }

  @override //it is a decorator
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App:Quiz App'),
        ),
        body: (_i < _questions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                i: _i,
                questions: _questions,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
