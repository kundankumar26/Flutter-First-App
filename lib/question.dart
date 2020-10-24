import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class Question extends StatelessWidget {
  var questionString;
  Question(this.questionString);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(questionString,
      style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
