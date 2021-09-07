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
  var _questions = [
    {
      "qText":
          "Which data structure allows deleting data elements from front and inserting at rear?",
      "Answerq": [
        {"text": "Queues", "score": 10},
        {"text": "BST", "score": 0},
        {"text": "Stacks", "score": 0},
        {"text": "None of these", "score": 0}
      ]
    },
    {
      "qText": "Which of the following data structure is non-linear type?",
      "Answerq": [
        {"text": "Strings", "score": 0},
        {"text": "Stacks", "score": 0},
        {"text": "Arrays", "score": 0},
        {"text": "None of these", "score": 10}
      ]
    },
    {
      "qText": "The depth of a complete binary tree is given by::",
      "Answerq": [
        {"text": "n log n", "score": 0},
        {"text": "n log n + 1", "score": 0},
        {"text": "log n", "score": 0},
        {"text": "log n + 1", "score": 10}
      ]
    },
    {
      "qText": "The two main measures for the efficiency of an algoritm are::",
      "Answerq": [
        {"text": "Processor and Memory", "score": 0},
        {"text": "Complexity & Capacity", "score": 0},
        {"text": "Time & Space", "score": 10},
        {"text": "Data & Space", "score": 0}
      ]
    },
    {
      "qText": "Which data structure is used for balancing of symbols?",
      "Answerq": [
        {"text": "Stack", "score": 10},
        {"text": "Queue", "score": 0},
        {"text": "Tree", "score": 0},
        {"text": "Graph", "score": 0}
      ]
    },
    {
      "qText": "Which data structure is used in Redo-Undo feature?",
      "Answerq": [
        {"text": "Tree", "score": 0},
        {"text": "Stack", "score": 10},
        {"text": "Graph", "score": 0},
        {"text": "Queue", "score": 0}
      ]
    },
    {
      "qText":
          "Which of the following data structure is best suited for efficient implementation of Priority Queue?",
      "Answerq": [
        {"text": "Array", "score": 0},
        {"text": "Heap", "score": 10},
        {"text": "Stack", "score": 0},
        {"text": "Linked List", "score": 0}
      ]
    },
    {
      "qText": "Process of removing an element from an empty stack is ::",
      "Answerq": [
        {"text": "Removing", "score": 0},
        {"text": "Underflow", "score": 10},
        {"text": "Deleting", "score": 0},
        {"text": "overflow", "score": 0}
      ]
    },
    {
      "qText": "Queue data structure works on ::",
      "Answerq": [
        {"text": "LIFO", "score": 0},
        {"text": "FIFO", "score": 10},
        {"text": "FILO", "score": 0},
        {"text": "None of the above", "score": 0}
      ]
    },
    {
      "qText": "Kadane algorithm is used to find ::",
      "Answerq": [
        {"text": "Max. sum subsequence", "score": 0},
        {"text": "Max. sum subarray", "score": 10},
        {"text": "Both", "score": 0},
        {"text": "None of these", "score": 0}
      ]
    },
    {
      "qText": "Which of the following is not an in-place algorithm?",
      "Answerq": [
        {"text": "Bubble Sort", "score": 0},
        {"text": "Merge Sort", "score": 10},
        {"text": "Both", "score": 0},
        {"text": "None of these", "score": 0}
      ]
    },
    {
      "qText":
          "Which of the following traversal outputs the data in sorted order in a BST?",
      "Answerq": [
        {"text": "Preorder", "score": 0},
        {"text": "Inorder", "score": 10},
        {"text": "Postorder", "score": 0},
        {"text": "Levelorder", "score": 0}
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
    _questions.shuffle();
    setState(() {
      //pressed = 0;
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
          title: Text('Quiz App'),
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
