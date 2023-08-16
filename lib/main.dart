import 'package:flutter/material.dart';
import 'package:app_akademie/screens/screen1.dart';
import 'package:app_akademie/screens/screen2.dart';
import 'package:app_akademie/screens/screen3.dart';
// Screens Importieren

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Opteionen für die App
      title: 'Start',
      home: const Screen1(), // Start Screen
      routes: {
        // Routes für Screens
        '/screen1': (context) => const Screen1(),
        '/screen2': (context) => const Screen2(),
        '/screen3': (context) => const Screen3(),
        // Routes Hinzufügen
      },
    );
  }
}
