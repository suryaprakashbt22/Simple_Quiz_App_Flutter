import 'package:flutter/material.dart';
import './question.dart';
import './ans.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int i;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.i,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[i]["qText"]),
        ...(questions[i]["Answerq"] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer["score"]), answer["text"]);
        }).toList()
      ],
    );
  }
}
