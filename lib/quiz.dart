import 'package:flutter/cupertino.dart';
import 'package:flutter_first_app/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function AnswerOptions;

  Quiz({this.questions, this.AnswerOptions, this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]["questions"],
        ),
        ...(questions[questionIndex]["answer"] as List<Map<String, Object>>)
            .map((e) {
          return Answer(() => AnswerOptions(e["score"]), e["text"]);
        }).toList()
      ],
    );
  }
}
