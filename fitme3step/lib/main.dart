import 'package:flutter/material.dart';

void main() {
  runApp(StepCounterApp());
}

class StepCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StepCounterPage(),
    );
  }
}

class StepCounterPage extends StatefulWidget {
  @override
  _StepCounterPageState createState() => _StepCounterPageState();
}

class _StepCounterPageState extends State<StepCounterPage> {
  int stepCount = 0;

  void incrementStepCount() {
    setState(() {
      stepCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Your Steps'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Step Count',
              style: TextStyle(fontSize: 54, fontWeight: FontWeight.bold),
            ),
            Text(
              stepCount.toString(),
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                incrementStepCount();
              },
              child: Text('Increment Step Count'),
            ),
          ],
        ),
      ),
    );
  }
}