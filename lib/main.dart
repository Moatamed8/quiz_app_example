import 'package:flutter/material.dart';
import 'questions.dart';
import 'answer.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

Color pr = Color(0xFF131a31);
Color y = Colors.amber;
Color w = Colors.white;
Color b = Colors.black;

class _MyAppState extends State<MyApp> {
  int _totalScore = 0;
  int num0 = 0, num1 = 0, num2 = 0, num3 = 0, num4 = 0, num5 = 0, num6 = 0, num7 = 0, num8 = 0, num9 = 0;
  var _question_index = 0;
  bool isSwitched = false;

  final List<Map<String, Object>> _questions = [
    {
      "questionText": "What\'s My Favorite Color ?",
      "answer": [
        {"text": "Black", "score": 3},
        {"text": "Gray", "score": 10},
        {"text": "Red", "score": 0},
        {"text": "Blue", "score": 5}
      ]
    },
    {
      "questionText": "What\'s My Nick Name ?",
      "answer": [
        {"text": "El Bana", "score": 5},
        {"text": "Meeem", "score": 0},
        {"text": "Islam", "score": 10},
        {"text": "Mezo", "score": 3}
      ]
    },
    {
      "questionText": "What\'s My Animal Name ?",
      "answer": [
        {"text": "Dongol", "score": 5},
        {"text": "Killer", "score": 10},
        {"text": "Boo", "score": 0},
        {"text": "Sayed", "score": 0}
      ]
    },
    {
      "questionText": "What\'s My Favorite Meal ?",
      "answer": [
        {"text": "Mahsii", "score": 10},
        {"text": "Pasta", "score": 3},
        {"text": "Fried Chicken", "score": 5},
        {"text": "Ries With Chicken ", "score": 3}
      ]
    },
    {
      "questionText": "What\'s My Best Day ?",
      "answer": [
        {"text": "Friday", "score": 10},
        {"text": "Sunday", "score": 10},
        {"text": "Thursday", "score": 10},
        {"text": "Monday", "score": 10}
      ]
    },
    {
      "questionText": "What\'s  My Best Month ?",
      "answer": [
        {"text": "1", "score": 10},
        {"text": "12", "score": 5},
        {"text": "7", "score": 0},
        {"text": "9", "score": 3}
      ]
    },
    {
      "questionText": "What\'s My Fav Car ?",
      "answer": [
        {"text": "Mercedes", "score": 10},
        {"text": "Bmw", "score": 5},
        {"text": "Dodg", "score": 5},
        {"text": "Passat", "score": 5}
      ]
    },
    {
      "questionText": "What\'s My Favorite Country ?",
      "answer": [
        {"text": "Saudi", "score": 5},
        {"text": "Canda", "score": 10},
        {"text": "Usa", "score": 10},
        {"text": "UAE", "score": 5}
      ]
    },
    {
      "questionText": "What\'s My Favorite Animal ?",
      "answer": [
        {"text": "Dog", "score": 10},
        {"text": "Bird", "score": 0},
        {"text": "Donkey", "score": 0},
        {"text": "Camal", "score": 5}
      ]
    },
    {
      "questionText": "What\'s Your Furit ?",
      "answer": [
        {"text": "Apple", "score": 10},
        {"text": "Banana", "score": 10},
        {"text": "peach", "score": 10},
        {"text": "gold", "score": 0}
      ]
    },
  ];

  void resetQuiz() {
    _totalScore = 0;
    setState(() {
      _question_index = 0;
    });
  }

  void answerQuestion(score) {
    if (_question_index == 0) num0 = score;
    else if (_question_index == 1) num1 = score;
    else if (_question_index == 2) num2 = score;
    else if (_question_index == 3) num3 = score;
    else if (_question_index == 4) num4 = score;
    else if (_question_index == 5) num5 = score;
    else if (_question_index == 6) num6 = score;
    else if (_question_index == 7) num7 = score;
    else if (_question_index == 8) num8 = score;
    else if (_question_index == 9) num9 = score;

    _totalScore += score;

    setState(() {
      _question_index += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz A bout Me",
            style: TextStyle(color: y),
          ),
          backgroundColor: pr,
          actions: <Widget>[
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                  if (isSwitched == true) {
                    b = Colors.white;
                    w = Colors.black;
                    pr = Colors.amber;
                    y = Color(0xFF131a31);
                  }
                  if (isSwitched == false) {
                    b = Colors.black;
                    w = Colors.white;
                    pr = Color(0xFF131a31);
                    y = Colors.amber;
                  }
                });
              },
              activeColor: Colors.white,
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.black,
            )
          ],
        ),
        body: Container(
          height: double.infinity,
          color: w,
          child: _question_index < _questions.length
              ? Quiz(_questions, _question_index, answerQuestion)
              : Result(resetQuiz, _totalScore),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: pr,
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            if (_question_index == 1)
              _totalScore -= num0;
            else if (_question_index == 2)
              _totalScore -= num1;
            else if (_question_index == 3) _totalScore -= num2;
            else if (_question_index == 4) _totalScore -= num3;
            else if (_question_index == 5) _totalScore -= num4;
            else if (_question_index == 6) _totalScore -= num5;
            else if (_question_index == 7) _totalScore -= num6;
            else if (_question_index == 8) _totalScore -= num7;
            else if (_question_index == 9) _totalScore -= num8;
            else if (_question_index == 10) _totalScore -= num9;


            setState(() {
              if (_question_index > 0) {
                _question_index--;
              }
            });
          },
        ),
      ),
    );
  }
}
