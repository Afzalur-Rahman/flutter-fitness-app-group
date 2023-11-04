import 'package:flutter/material.dart';

class HomeWorkoutTutorialsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Workout Tutorials Page'),
      ),
      body: Center(
        child: Text(
          'Home Workout Tutorials Page - Content goes here',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
