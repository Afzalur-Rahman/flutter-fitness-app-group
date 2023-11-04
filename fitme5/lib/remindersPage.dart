import 'package:flutter/material.dart';

class RemindersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reminders Page'),
      ),
      body: Center(
        child: Text(
          'Reminders Page - Content goes here',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
