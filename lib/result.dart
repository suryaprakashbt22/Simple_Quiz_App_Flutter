import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultRemarks {
    var resultText;

    if (resultScore >= 90) {
      resultText = "Excellent Performance!\n" + "Score: $resultScore/120";
    } else if (resultScore < 90 && resultScore >= 75) {
      resultText = "Keep it Up!\n" + "Score: $resultScore/120";
    } else if (resultScore < 75) {
      resultText = "Good!\n" + "Score: $resultScore/120";
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
      const SizedBox(height: 100),
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
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
