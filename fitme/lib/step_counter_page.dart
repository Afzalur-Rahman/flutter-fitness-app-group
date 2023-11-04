import 'package:flutter/material.dart';

void main() {
  runApp(FitnessApp());
}

class FitnessApp extends StatelessWidget {
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

  void incrementSteps() {
    setState(() {
      stepCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Step Count: $stepCount"),
            ElevatedButton(
              onPressed: incrementSteps,
              child: Text("Increment Step"),
            ),
          ],
        ),
      ),
    );
  }
}
