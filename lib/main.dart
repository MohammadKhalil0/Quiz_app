import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'app_brain.dart';

AppBrain appBrain = AppBrain();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(backgroundColor: Colors.grey, title: Text('Quiz')),
        body: Padding(padding: const EdgeInsets.all(20.0), child: Body()),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Widget> answerList = [];
  int rightAnswers = 0;
  int totalQuestions = appBrain.questionGroup.length;

  void checkAnswer(userAnswer) {
    bool correctAnswer = appBrain.getQuestionAnswer();
    setState(() {
      if (userAnswer == correctAnswer) {
        rightAnswers++;
        answerList.add(
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(Icons.thumb_up, color: Colors.green),
          ),
        );
      } else {
        answerList.add(
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(Icons.thumb_down, color: Colors.red),
          ),
        );
      }
      if (appBrain.isFinished()) {
        Alert(
          context: context,
          title: "End of the Quiz",
          desc: "You answered $rightAnswers questions correctly out of $totalQuestions",
          buttons: [
            DialogButton(
              onPressed: () => Navigator.pop(context),
              color: Colors.lightBlue,
              width: 120,
              child: Text(
                "Start Over",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ).show();

        appBrain.reset();
        answerList = [];
        rightAnswers = 0;
      } else {
        appBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(children: answerList),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Image.asset(appBrain.getQuestionImage()),
              SizedBox(height: 20),
              Text(
                appBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              onPressed: () {
                
              },
              style: TextButton.styleFrom(backgroundColor: Colors.indigo),
              child: Text(
                'True',
                style: TextStyle(fontSize: 22.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.deepOrange),
              onPressed: () {
                
              },
              child: Text(
                'False',
                style: TextStyle(fontSize: 22.0, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
