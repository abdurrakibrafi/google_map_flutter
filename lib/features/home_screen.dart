// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Marker> _marker = [];
  List<Marker> _listOfMarker = const [
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(23.792265005916146, 90.40561775869223),
        infoWindow: InfoWindow(title: "My Current Location"))
  ];

  static final CameraPosition _kGooglePlay = const CameraPosition(
    zoom: 14,
    target: LatLng(23.792265005916146, 90.40561775869223),
  );

  @override
  void initState() {
    super.initState();
    _marker.addAll(_listOfMarker);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Map'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GoogleMap(
            markers: Set<Marker>.of(_marker),
            initialCameraPosition: _kGooglePlay),
      ),
    );
  }
}
