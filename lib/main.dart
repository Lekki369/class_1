// ignore_for_file: deprecated_member_use

import './question.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionsIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionsIndex++;
    });
    print('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      'What\'s Your Favourite Color',
      'What\'s Your Favourite Animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello World')),
        body: Column(children: [
          Question(questionText: questions[_questionsIndex]),
          RaisedButton(
            onPressed: () {
              _answerQuestion();
            },
            child: Text('Answer 1'),
          ),
          RaisedButton(
            onPressed: () {
              _answerQuestion();
              // here
            },
            child: Text('Answer 2'),
          ),
          RaisedButton(
            onPressed: _answerQuestion,
            child: Text('Answer 3'),
          ),
        ]),
      ),
    );
  }
}
