import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Google extends StatelessWidget {
  const Google({Key? key}) : super(key: key);

  static const double _defaultLat = 8.85577417427599;
  static const double _defaultLan = 38.81151398296511;

  static const CameraPosition _defaultLocation =
      CameraPosition(target: LatLng(_defaultLat, _defaultLan), zoom: 15);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 300,
        width: double.infinity,
        child: GoogleMap(initialCameraPosition: _defaultLocation));
  }
}
