import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  // Initial position of the map
  static final CameraPosition _initialPosition = const CameraPosition(
    target: LatLng(37.7749, -122.4194), // Example: San Francisco coordinates
    zoom: 12.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text('Adnan shah'),
          centerTitle: true,
        ),
        body: GoogleMap(initialCameraPosition: _initialPosition));
  }
}
