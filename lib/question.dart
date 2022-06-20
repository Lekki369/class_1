import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question({
    required this.questionText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        textAlign: TextAlign.center,
        questionText,
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
