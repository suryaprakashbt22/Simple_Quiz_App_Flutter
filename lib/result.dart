import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultRemarks {
    var resultText;
    if (resultScore == 30) {
      resultText = "30/30 Excellent Performance !";
    } else if (resultScore == 20) {
      resultText = "20/30 Keep it Up !";
    } else if (resultScore == 10) {
      resultText = "10/30 Good !";
    } else {
      resultText = "Work Hard ! All the Best !";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      const SizedBox(height: 100),
      Center(
        child: Text(
          resultRemarks,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      //TextButton(
      //style: TextButton.styleFrom(
      //textStyle: const TextStyle(fontSize: 20),
      //),
      const SizedBox(height: 100),
      ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Colors.white,
                textStyle: const TextStyle(fontSize: 20),
              ),

              onPressed: resetHandler,
              child: Text("Take Another Shot!"),
              //onPressed: () {},
              //child: const Text('Gradient'),
            ),
          ],
        ),
      ),
    ]);
  }
}
