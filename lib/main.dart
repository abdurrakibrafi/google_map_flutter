import 'package:flutter/material.dart';
import 'package:google_map_flutter/features/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google-Map',
      home: HomeScreen(),
    );
  }
}
