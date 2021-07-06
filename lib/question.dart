import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; //once data is entered it can't be changed (final)
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 33, color: Colors.teal[900]),
        textAlign: TextAlign.center,
      ),
    );
  }
}
