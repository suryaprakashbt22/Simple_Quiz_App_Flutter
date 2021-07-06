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
        /*RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),*/
        //Answer(_answerQuestion),
        /*RaisedButton(
              child: Text('Answer 2'),
              onPressed: _answerQuestion,
              //onPressed: () => print('Answer 2 chosen!'),
            ),*/
        //Answer(_answerQuestion),
        /*RaisedButton(
              child: Text('Answer 3'),
              onPressed: _answerQuestion,
              /*onPressed: () {
                print('Answer 3chosen!');
              },*/ // use of anonymous function
            ),*/
        //Answer(_answerQuestion),
        // Text('Hi, I am Android, what is ur name?'),
        //RaisedButton(
        //child: Text("Better not tell 'em!"),
        //onPressed: () => print("No can do!"),
        //),
        //RaisedButton(
        //child: Text("Tell 'em!"),
        //onPressed: () => print("I'm ur first app!"),
        //),
      ],
    );
  }
}
