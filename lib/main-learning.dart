// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'widgets/question.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<Home> {
  int _questionIndex = 0;
  String sum = 'true';
  var answer = false;

  void onPressedTomHank() {
    print("TomHank +1");
    // _questionIndex = _questionIndex + 1;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('qusetionIndex : $_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    var qusetions = ['ใครเป็นพ่อเธอ ? ', '.ใครเป็นแม่เธอ ?!'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: Column(children: [
          Question(qusetions[_questionIndex]),
          RaisedButton(
            onPressed: () => onPressedTomHank(), // arrow funtion
            child: Text('RaisedButton'),
          ),
          RaisedButton(
            onPressed: () {
              print("live in japan");
            }, // anonymous function
            child: Text('Let\'s go japan'),
          ),
          ElevatedButton(
            onPressed: () {
              onPressedTomHank();
              setState(() {
                answer = false;
                sum = 'flase';
              });
            },
            child: Text('Waht your Name'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                answer = true;
                sum = 'true';
              });
            },
            child: Text('Who ?'),
          ),
          answer ? Question(sum) : Text(sum)
        ]),
      ),
    );
  }
}
