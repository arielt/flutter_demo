import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Cat', 'Dog', 'Elephant', 'Lion']
    },
    {
      'questionText': 'Who is your daddy?',
      'answers': ['Shrike']
    }
  ];

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more questions');
    }

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Demo')),
            body: _questionIndex < _questions.length
                ? Quiz(_answerQuestion, _questions, _questionIndex)
                : Result()));
  }
}
