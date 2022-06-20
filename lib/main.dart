// ignore_for_file: deprecated_member_use

import 'package:flutter_complete_guide/quiz.dart';

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
    List<Map<String, dynamic>> questions = [
      {
        'questionText': 'What\'s Your Favourite Color',
        'answer': ['Black', 'Red', 'Blue', 'Orange', 'White']
      },
      {
        'questionText': 'What\'s Your Favourite Animal',
        'answer': ['Bear', 'Tiger', 'Lion', 'Eagle', 'Orcas']
      },
      {
        'questionText': 'What\'s Your Favourite Food',
        'answer': [
          'Rice and Bean',
          'Yam and Egg',
          'Pounded Yam and Egusi',
          'Bread and Tea ',
          'Bread and Egg'
        ]
      },
      {
        'questionText': 'What\'s Your Favourite State',
        'answer': ['Lagos', 'Abuja', 'Kano', 'Delta', 'Calabar']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz App')),
        body: _questionsIndex < questions.length
            ? Quiz(
                question: questions[_questionsIndex]['questionText'],
                answer: questions[_questionsIndex]['answer'],
                answerQuestion: _answerQuestion,
              )
            : Center(
                child: Text(
                  'Done',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25),
                ),
              ),
      ),
    );
  }
}
