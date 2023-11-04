import 'package:flutter/material.dart';
import 'bmi_calculator.dart';
import 'step_counter.dart';
import 'about.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => StepCounter()));
              },
              child: Text('Step Counter'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BMICalculator()));
              },
              child: Text('BMI Calculator'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
              },
              child: Text('About'),
            ),
          ],
        ),
      ),
    );
  }
}
