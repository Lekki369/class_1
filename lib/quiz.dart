import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final String question;
  final List answer;
  final Function answerQuestion;
  const Quiz({
    @required this.answerQuestion,
    @required this.answer,
    @required this.question,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questionText: question),
      ...(answer).map((e) {
        return Answer(answer: () => answerQuestion(e['score']), ans: e['text']);
      }).toList()
    ]);
  }
}
