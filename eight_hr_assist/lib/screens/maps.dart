import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  static String id = '/maps';
  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target:
              LatLng(22.5448131, 88.3403691), //LatLng(10.2134686, 76.2876107),
          zoom: 15,
        ),
      ),
    );
  }
}
