import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BMICalculator(),
  ));
}

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  double height = 165.0; // Default height in centimeters
  double weight = 65.0;  // Default weight in kilograms
  double bmi = 24.0;

  void calculateBMI() {
    setState(() {
      // Formula to calculate BMI: weight (kg) / (height (m) * height (m))
      bmi = weight / ((height / 100) * (height / 100));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Colors.purple, // Purple app bar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Enter your height (cm):'),
            SizedBox(height: 10),
            Slider(
              value: height,
              min: 100,
              max: 250,
              onChanged: (newValue) {
                setState(() {
                  height = newValue;
                });
              },
            ),
            Text('$height cm'),
            SizedBox(height: 20),
            Text('Enter your weight (kg):'),
            SizedBox(height: 10),
            Slider(
              value: weight,
              min: 30,
              max: 200,
              onChanged: (newValue) {
                setState(() {
                  weight = newValue;
                });
              },
            ),
            Text('$weight kg'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calculateBMI();
              },
              child: Text('Calculate BMI'),
            ),
            SizedBox(height: 20),
            Text('Your BMI: ${bmi.toStringAsFixed(1)}'),
          ],
        ),
      ),
    );
  }
}
