import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  final Function q;
  final int totalScore;

  Result(this.q, this.totalScore);

  String get textScore {
    String resultText;
    if ( totalScore >= 90) {
      resultText = "You Are So my Lovely";
    } else if (totalScore < 90 && totalScore >= 70) {
      resultText = "My Lovely friend";
    } else if (totalScore < 70 && totalScore >= 50) {
      resultText = "You Are Friend";
    } else {
      resultText = "You need To know me more";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Text(
           "Your Score is $totalScore",
           textAlign: TextAlign.center,
           style: TextStyle(
             fontSize: 40,
             fontWeight: FontWeight.bold,
             color: pr,
           ),
         ),
         Text(
           textScore,
           style: TextStyle(
             fontSize: 40,
             fontWeight: FontWeight.bold,
             color: pr,
           ),
         ),
         FlatButton(
             onPressed: q,
             child: Text(
               "Reset Quiz App",
               style: TextStyle(
                 fontSize: 30,
                 color: Colors.blue,
                 fontWeight: FontWeight.bold,
               ),
             )),
       ],

      ),
    );
  }
}
