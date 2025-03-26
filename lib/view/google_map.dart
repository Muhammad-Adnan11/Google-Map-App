import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  Completer<GoogleMapController> _controler = Completer();
  // Initial position of the map
  static final CameraPosition _initialPosition = const CameraPosition(
    target: LatLng(34.024726588444146, 71.52564164862221), // Example: San Francisco coordinates
    zoom: 12.0,
  );
  List<Marker> _marker = [];
  List<Marker> _list = const [
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(34.024726588444146, 71.52564164862221),
      infoWindow: InfoWindow(title: 'My current Position'),
    ),
    Marker(
      markerId: MarkerId('2'),
      position: LatLng(34.00631928736665, 71.50959993466313),
      infoWindow: InfoWindow(title: 'My Position'),
    ),
    Marker(
      markerId: MarkerId('3'),
      position: LatLng(34.00667914181635, 71.50951612918234),
      infoWindow: InfoWindow(title: 'My tehkal'),
    ),
    Marker(
      markerId: MarkerId('4'),
      position: LatLng(34.00585072174623, 71.50563994423369),
      infoWindow: InfoWindow(title: 'My kfc'),
    )
  ];
  @override
  void initState() {
    super.initState();
    _marker.addAll(_list); // _list ke markers _marker me add karo
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.greenAccent,
      //   title: Text('Google Map'),
      //   centerTitle: true,
      // ),
      body: GoogleMap(
        initialCameraPosition: _initialPosition,
        mapType: MapType.normal,
        // myLocationEnabled: true,
        // myLocationButtonEnabled: true,
        // indoorViewEnabled: true,
        // compassEnabled: true,
        markers: Set<Marker>.of(_marker),
        onMapCreated: (GoogleMapController controller) {
          _controler.complete(controller);
        },
      ),
    );
  }
}
