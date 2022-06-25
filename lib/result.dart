// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function ressetter;
  Result({
    @required this.ressetter,
    @required this.resultScore,
    Key key,
  }) : super(key: key);

  String get resultValue {
    String resultCount;
    if (resultScore <= 10) {
      resultCount = 'Are You Okay';
    } else if (resultScore <= 15) {
      resultCount = 'You Are Doing Well';
    } else if (resultScore <= 20) {
      resultCount = 'Boss Man';
    } else if (resultScore <= 25) {
      resultCount = 'You Too Dey Enjoy';
    } else if (resultScore <= 30) {
      resultCount = 'Try Dey Help Some People';
    } else if (resultScore <= 35) {
      resultCount = 'You Might Be Stingy or Generous';
    } else {
      resultCount = 'Speechless';
    }
    return resultCount;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Text(resultValue),
      ),
      FlatButton(
        onPressed: ressetter,
        child: Text('Reset'),
      ),
    ]);
  }
}
