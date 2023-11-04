import 'package:flutter/material.dart';

class StepCounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Step Counter Page'),
      ),
      body: Center(
        child: Text(
          'Step Counter Page - Content goes here',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
