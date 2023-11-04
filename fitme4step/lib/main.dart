import 'package:flutter/material.dart';
import 'package:pedometer/pedometer.dart';

void main() {
  runApp(StepCounterApp());
}

class StepCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Step Counter',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _stepCount = 0;
  Stream<StepCount> _stepCountStream;
  Pedometer _pedometer;

  @override
  void initState() {
    super.initState();
    _initPedometer();
  }

  void _initPedometer() {
    _pedometer = Pedometer();

    _stepCountStream = _pedometer.events;

    _stepCountStream.listen((StepCount event) {
      setState(() {
        _stepCount = event.steps;
      });
    });

    _pedometer.startListening(
      onStepCount: (stepCountValue) {},
    );
  }

  @override
  void dispose() {
    _pedometer.stopListening();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Step Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Steps taken:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$_stepCount',
              style: TextStyle(fontSize: 48),
            ),
          ],
        ),
      ),
    );
  }
}
