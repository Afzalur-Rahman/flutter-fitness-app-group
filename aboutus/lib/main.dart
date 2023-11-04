import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Fitness App About page '),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Implement settings functionality here
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '|        About Us \n \n \n Afzalur Rahman \n Shahriar Sakib',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // ... Your other widgets ...
        ],
      ),
    );
  }
}

// About Page with Colorful Background
class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Center(

        child: Container(
          color: Colors.blue, // Customize the background color
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Fitness App',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white, // Text color
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Version 1.0.0',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'About us text goes here. You can provide information about your app, your team, and your mission.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white, // Text color
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
