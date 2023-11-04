import 'package:flutter/material.dart';
import 'dart:math';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  double height = 170;
  double weight = 70;
  double bmi = 0;

  void calculateBMI() {
    double heightInMeters = height / 100;
    bmi = weight / pow(heightInMeters, 2);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Height (cm):',
              style: TextStyle(fontSize: 20),
            ),
            Slider(
              value: height,
              onChanged: (value) {
                setState(() {
                  height = value;
                });
              },
              min: 100,
              max: 250,
              divisions: 150,
              label: height.round().toString(),
            ),
            Text(
              'Weight (kg):',
              style: TextStyle(fontSize: 20),
            ),
            Slider(
              value: weight,
              onChanged: (value) {
                setState(() {
                  weight = value;
                });
              },
              min: 30,
              max: 150,
              divisions: 120,
              label: weight.round().toString(),
            ),
            ElevatedButton(
              onPressed: calculateBMI,
              child: Text('Calculate BMI'),
            ),
            SizedBox(height: 20),
            Text(
              'BMI: ${bmi.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
