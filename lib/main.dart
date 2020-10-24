import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_app/quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var finalScore = 0;

  void resetQuiz(){
    setState(() {
      questionIndex = 0;
      finalScore = 0;
    });
  }

  // ignore: non_constant_identifier_names
  void AnswerIndex(int score) {
    finalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(finalScore);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        "questions": "What's your name?",
        "answer": [
          {"text": "Rob", "score": 20},
          {"text": "ankit", "score": 15},
          {"text": "sachin", "score": 10},
          {"text": "atul", "score": 5}]
      },
      {
        "questions": "What's your age?",
        "answer": [
          {"text": "Rob", "score": 60},
          {"text": "ankit", "score": 55},
          {"text": "sachin", "score": 50},
          {"text": "atul", "score": 45}]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: questionIndex < question.length ?
        Quiz(
          questions: question,
          AnswerOptions: AnswerIndex,
          questionIndex: questionIndex,
        ) : Center(child: Column(children: [
          Text("Its completed \n Your final score " + finalScore.toString(),
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,),
          FlatButton(onPressed: resetQuiz, child: Text("Restart Quiz"))
        ],)
      ),
    ));
    throw UnimplementedError();
  }
}
