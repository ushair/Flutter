import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resScore;
  final Function resetHandler;
  Result(this.resScore, this.resetHandler);

  String get resultPhrase {
    var resText = 'You did it';
    if (resScore <= 8) {
      resText = 'You are awesome and innocent!';
    } else if (resScore <= 12) {
      resText = 'Pretty likable!';
    } else if (resScore <= 16) {
      resText = 'You are Strange?!';
    } else {
      resText = 'You are so bad!';
    }
    return resText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
