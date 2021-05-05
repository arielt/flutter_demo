import 'package:flutter/material.dart';

import './question.dart';

/*
void main () {
  runApp(new MyApp());
}
*/

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Demo')),
          body: Column(
            children: [
              Question(questions[_questionIndex]),
              ElevatedButton(
                child: Text('Answer 1'),
                onPressed: _answerQuestion,
              ),
              ElevatedButton(
                child: Text('Answer 2'),
                onPressed: () => print('answer 2'),
              ),
              ElevatedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('answer 3');
                },
              ),
            ],
          )),
    );
  }
}
