import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class WalkingDistancePage extends StatefulWidget {
  @override
  _WalkingDistancePageState createState() => _WalkingDistancePageState();
}

class _WalkingDistancePageState extends State<WalkingDistancePage> {
  double distanceInMeters = 0.0;

  Future<void> calculateDistance() async {
    try {
      Position currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
      );
      // Replace these coordinates with the user's starting location.
      double startLatitude = 37.7749;
      double startLongitude = -122.4194;
      double distance = await Geolocator.distanceBetween(
        startLatitude, startLongitude, currentPosition.latitude, currentPosition.longitude,
      );
      setState(() {
        distanceInMeters = distance;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Walking Distance"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: calculateDistance,
              child: Text("Calculate Distance"),
            ),
            Text("Distance: ${distanceInMeters.toStringAsFixed(2)} meters"),
          ],
        ),
      ),
    );
  }
}
