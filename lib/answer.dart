import 'package:flutter/material.dart';
import 'main.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function x;

  Answer(this.answerText, this.x);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: RaisedButton(
        
        padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: x,
        color: pr,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 20, color: y),
        ),
      ),
    );
  }
}
