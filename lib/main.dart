// ignore_for_file: deprecated_member_use

import 'package:flutter_complete_guide/quiz.dart';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionsIndex = 0;
  int _totalScore = 0;

  void _reset() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
        'answer': [
          {'text': 'Black', 'score': 5},
          {'text': 'Red', 'score': 3},
          {'text': 'Blue', 'score': 4},
          {'text': 'Orange', 'score': 6},
          {'text': 'White', 'score': 5},
        ]
      },
      {
        'questionText': 'What\'s Your Favourite Animal',
        'answer': [
          {'text': 'Bear', 'score': 4},
          {'text': 'Tiger', 'score': 5},
          {'text': 'Lion', 'score': 4},
          {'text': 'Eagle', 'score': 5},
          {'text': 'Orca', 'score': 4}
        ]
      },
      {
        'questionText': 'What\'s Your Favourite Food',
        'answer': [
          {'text': 'Rice and Bean', 'score': 11},
          {'text': 'Yam and Egg', 'score': 9},
          {'text': 'Pounded Yam and Egusi', 'score': 16},
          {'text': 'Bread and Tea', 'score': 11},
          {'text': 'Bread and Egg', 'score': 11},
        ]
      },
      {
        'questionText': 'What\'s Your Favourite State',
        'answer': [
          {'text': 'Lagos', 'score': 6},
          {'text': 'Abuja', 'score': 7},
          {'text': 'Kano', 'score': 5},
          {'text': 'Delta', 'score': 6},
          {'text': 'Calabar', 'score': 9},
        ]
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
            : Result(
                resultScore: _totalScore,
                ressetter: _reset,
              ),
      ),
    );
  }
}
