



// ddgasgssddddddddddddddddddddddddd
import 'package:flutter/material.dart';




void main() {
  runApp(FitnessApp());
}

class FitnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FitnessHomePage(),
    );
  }
}

class FitnessHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness App'),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Handle the menu icon action here
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [



                Container(

                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.directions_walk,
                        size: 60,
                        color: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Step Counter',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'Today: 5000 steps',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),



                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.local_dining,
                        size: 60,
                        color: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'BMI calculator',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'Overweight',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.list,
                        size: 60,
                        color: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Daily Goals',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        '3 goals for today',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.accessibility_new,
                        size: 60,
                        color: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Walking Tracker',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        '2 miles today',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.purple, // Color for Home Workout Tutorials
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.fitness_center, // Icon for Home Workout Tutorials
                        size: 60,
                        color: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Home Workout Tutorials',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'Daily workouts for you',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.red, // Color for 21 Days Challenge
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.calendar_today, // Icon for 21 Days Challenge
                        size: 60,
                        color: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text(
                        '21 Days Challenge',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'Get fit in 21 days!',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.amber, // Color for Reminders
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.alarm, // Icon for Reminders
                    size: 60,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Reminders',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'Set your fitness reminders',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
