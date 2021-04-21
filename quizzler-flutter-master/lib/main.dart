import 'package:flutter/material.dart';
import 'question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> iconList = [];
  int questionNumber = 0;
  QuestionBank questionBank = QuestionBank();
  String question;
  bool answer;
  int rightAnswerCount = 0;

  void setQuestionAndAnswer() {
    question = questionBank.getQuestion(questionNumber);
    answer = questionBank.getAnswer(questionNumber);
  }

  void updateQuizStates(bool buttonValue) {
    setState(() {
      setIcons(buttonValue);
    });
    if (buttonValue == answer) {
      rightAnswerCount++;
    }
    if (questionNumber < 12) {
      questionNumber++;
    } else {
      alert();
      resetQuizState();
    }
  }

  void resetQuizState() {
    iconList = [];
    questionNumber = 0;
    rightAnswerCount = 0;
  }

  void setIcons(bool buttonValue) {
    if (buttonValue == answer) {
      iconList.add(Icon(Icons.check, color: Colors.green));
    } else {
      iconList.add(Icon(Icons.close, color: Colors.red));
    }
  }

  void alert() {
    Alert(
      context: context,
      title: 'Quiz Finished',
      desc: 'Score: $rightAnswerCount out of ${questionNumber + 1}',
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    // build will happen if there is change in state
    setQuestionAndAnswer();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                question,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                updateQuizStates(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                updateQuizStates(false);
              },
            ),
          ),
        ),
        Row(
          children: iconList,
        ),
        //TODO: Add a Row here as your score keeper
      ],
    );
  }
}
