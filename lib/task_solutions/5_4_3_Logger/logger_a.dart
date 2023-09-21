import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

// Aufgabe 1: Eine einfache Flutter-App mit einem Button und Logging

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void _logMessage() {
    print('Button wurde gedrückt!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logging-App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _logMessage,
          child: const Text('Button'),
        ),
      ),
    );
  }
}
