import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'You are awesome!';
    } else {
      resultText = 'You are pretty likeable!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        )),
        TextButton(
            onPressed: resetQuiz,
            child: Text('Restart Quiz!'),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue)))
      ],
    );
  }
}
