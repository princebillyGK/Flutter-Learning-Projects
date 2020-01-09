import 'package:flutter/material.dart';
import 'package:myproject/answer.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyappState();
  }
}

class _MyappState extends State<MyApp>{
  //attributes
  var _questionIndex= 0;
  // var _questions = [
  //   'What is your favourite color',
  //   'What is your favourite game',
  //   'What is your favourite algorithm',
  //   'What is your favourite programming lanuage'
  // ];
  var questions = [
    {
      'questionText' : 'What is your favourite color',
      'answers' : ['Blue', 'Red', 'Green']
    },
    {
      'questionText' : 'What is your favourite animal',
      'answers' : ['Lion', 'Bear', 'Monkey']
    },
    {
      'questionText' : 'What is your favourite game',
      'answers' : ['Football', 'Programming', 'Race']
    },

  ];
  //user-defined-function
  void _answerQuestion(){
    setState(() {
      ++_questionIndex;
    });
    print(_questionIndex);
    print ("button clicked");
  }
  //build function
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("My first app")),
          body: Column(
            children: <Widget>[
              Question(questions[_questionIndex]['questionText']),
              ...(questions[_questionIndex]['answers'] as List<String>).map((answer) => Answer(_answerQuestion,answer)).toList(),
            ],
            )
          )

    );
  }
}
