import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class WalkingTrackerPage extends StatefulWidget {
  @override
  _WalkingTrackerPageState createState() => _WalkingTrackerPageState();
}

class _WalkingTrackerPageState extends State<WalkingTrackerPage> {
  late GoogleMapController mapController;
  Location location = Location();
  List<LatLng> routeCoordinates = [];
  Set<Polyline> polylines = {};
  LatLng? currentLocation;

  @override
  void initState() {
    super.initState();

    location.onLocationChanged.listen((LocationData locationData) {
      setState(() {
        final latLng = LatLng(locationData.latitude!, locationData.longitude!);
        currentLocation = latLng;
        routeCoordinates.add(latLng);
        polylines.add(Polyline(
          polylineId: PolylineId('route'),
          color: Colors.blue,
          points: routeCoordinates,
        ));
        mapController.animateCamera(CameraUpdate.newLatLng(latLng));
      });
    });

    _requestLocationPermission();
  }

  void _requestLocationPermission() async {
    final serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      final status = await location.requestService();
      if (status != PermissionStatus.granted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Location service is not enabled.'),
          ),
        );
        return;
      }
    }

    final permissionStatus = await location.hasPermission();
    if (permissionStatus == PermissionStatus.denied) {
      final newPermissionStatus = await location.requestPermission();
      if (newPermissionStatus != PermissionStatus.granted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Location permission is denied.'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Walking Tracker'),
      ),
      body: GoogleMap(
        onMapCreated: (controller) {
          mapController = controller;
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(0.0, 0.0), // Initialize with an empty map
          zoom: 15.0,
        ),
        polylines: polylines,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (currentLocation != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                    'Location recorded at ${currentLocation!.latitude}, ${currentLocation!.longitude}'),
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('No location data available.'),
              ),
            );
          }
        },
        child: Icon(Icons.location_on),
      ),
    );
  }
}
