import 'package:flutter/material.dart';

void main() {
  runApp(ChallengeApp());
}

class ChallengeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: FitnessChallengeScreen(),
    );
  }
}

class FitnessChallengeScreen extends StatefulWidget {
  @override
  _FitnessChallengeScreenState createState() => _FitnessChallengeScreenState();
}

class _FitnessChallengeScreenState extends State<FitnessChallengeScreen> {
  List<String> activities = [
    "Push-ups",
    "Jumping Jacks",
    "Plank",
    "Squats",
    "Lunges",
    "Burpees",
    "High Knees",
    "Bicycle Crunches",
    "Mountain Climbers",
    "Leg Raises",
    "Yoga",
    "Dumbbell Rows",
    "Stair Climbing",
    "Running",
    "Jump Rope",
    "Wall Sits",
    "Tricep Dips",
    "Side Planks",
    "Russian Twists",
    "Flutter Kicks",
  ];

  List<bool> completed = List.generate(21, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("21-Day Fitness Challenge"),
      ),
      body: ListView.builder(
        itemCount: 21,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 3,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.purple,
                child: Text((index + 1).toString()),
                foregroundColor: Colors.white,
              ),
              title: Text(activities[index]),
              trailing: Checkbox(
                value: completed[index],
                onChanged: (value) {
                  setState(() {
                    completed[index] = value!;
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
