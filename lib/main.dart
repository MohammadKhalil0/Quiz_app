import 'package:flutter/material.dart';

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
              Image.asset('images/image-1.jpg'),
              SizedBox(height: 20),
              Text(
                'The number of planets in the solar system is eight planets',
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
