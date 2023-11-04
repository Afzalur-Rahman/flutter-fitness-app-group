import 'package:flutter/material.dart';
import 'package:pedometer/pedometer.dart';

class StepCounter extends StatefulWidget {
  @override
  _StepCounterState createState() => _StepCounterState();
}

class _StepCounterState extends State<StepCounter> {
  int steps = 0;
  StreamSubscription<int>? stepSubscription;

  @override
  void initState() {
    super.initState();

    stepSubscription = Pedometer.stepCountStream.listen((int stepCount) {
      setState(() {
        steps = stepCount;
      });
    });
  }

  @override
  void dispose() {
    stepSubscription?.cancel();
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
              'Steps Taken:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$steps',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
