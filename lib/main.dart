import 'package:flutter/material.dart';
import 'package:app_akademie/screens/screen1.dart';
import 'package:app_akademie/screens/screen2.dart';
import 'package:app_akademie/screens/screen3.dart';
// Screens Importieren

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Opteionen für die App
      title: 'Start',
      home: Screen1(), // Start Screen
      routes: {
        // Routes für Screens
        '/screen1': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
        // Routes Hinzufügen
      },
    );
  }
}
