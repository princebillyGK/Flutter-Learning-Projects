import 'package:flutter/material.dart';
import './quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyappState();
  }
}

class _MyappState extends State<MyApp> {
  //attributes
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What is your favourite color',
      'answers': [{'text': 'Blue', 'score' : 10}, {'text': 'Red', 'score' : 5}, {'text': 'Green', 'score' : 3}, {'text': 'White', 'score' : 1}]
    },
    {
      'questionText': 'What is your favourite animal',
      'answers': [{'text': 'Lion', 'score' : 2}, {'text': 'Bear', 'score' : 1}, {'text': 'Monkey', 'score' : 10}]
    },
    {
      'questionText': 'What is your favourite game',
      'answers': [{'text': 'Football', 'score' :10}, {'text': 'Programming', 'score' : 100}, {'text': 'Race', 'score' : 15}]
    },
  ];
  //user-defined-function
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      ++_questionIndex;
    });
    print(_questionIndex);
    print("button clicked");
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  //build function
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("My first app")),
            body: 
            _questionIndex < _questions.length ? 
            Quiz(
              questions: _questions,
              questionIndex: _questionIndex,
              answerQuestion: _answerQuestion
              ) : Result(_totalScore, _resetQuiz),
    ));
  }
}
