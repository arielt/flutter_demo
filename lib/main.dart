import 'package:flutter/material.dart';

/*
void main () {
  runApp(new MyApp());
}
*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
              Text('The question!'),
              ElevatedButton(
                onPressed: null,
                child: Text('Answer 1'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('Answer 2'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('Answer 3'),
              ),
            ],
          )),
    );
  }
}
