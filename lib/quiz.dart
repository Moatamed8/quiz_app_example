import 'package:flutter/material.dart';
import 'answer.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int question_index;
  final Function answerQuestion;

  Quiz(this.questions, this.question_index, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Questions(questions[question_index]["questionText"]),
        ),
        ...(questions[question_index]["answer"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answer["text"], () => answerQuestion(answer["score"]));
        }).toList(),
      ],
    );
  }
}
