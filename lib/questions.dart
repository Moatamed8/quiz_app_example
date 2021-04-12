import 'package:flutter/material.dart';
import 'main.dart';

class Questions extends StatelessWidget {
  final question_text;

  Questions(this.question_text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20,bottom: 10),
      alignment: Alignment.center,
      child: Text(
        question_text,
        style: TextStyle(
          fontSize: 30,
          color: pr,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
