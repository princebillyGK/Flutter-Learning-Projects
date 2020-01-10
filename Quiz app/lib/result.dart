import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final score;
  final Function resetHandler;
  Result(this.score, this.resetHandler);
  String get resultPhrase {
    if (score <= 8) {
      return 'You are so inocent';
    } else if (score <= 15 ) {
      return 'You are awesome and innocent';
    } else {
      return 'You are bad';
    }
  } 
  @override
  Widget build(BuildContext context) {
    return Center(child: 
    Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
          )
          ),
          FlatButton(
            child: Text('Reset'),
            onPressed: resetHandler,
          )
      ],
    ));
  }
}
