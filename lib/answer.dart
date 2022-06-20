import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answer;
  final String ans;
  Answer({
    @required this.answer,
    @required this.ans,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.amberAccent,
        onPressed: answer,
        child: Text(
          ans,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
