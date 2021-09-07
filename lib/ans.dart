import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  int score;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.lightBlueAccent,
        textColor: Colors.black,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
