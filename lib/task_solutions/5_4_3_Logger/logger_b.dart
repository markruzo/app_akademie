import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(const MyApp());
}

final logger = Logger();

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

// Aufgabe 2: Verschiedene Logging-Levels verwenden

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void _logMessage() {
    logger.v('Verbose Nachricht');
    logger.d('Debug Nachricht');
    logger.i('Info Nachricht');
    logger.w('Warnung Nachricht');
    logger.e('Fehler Nachricht');
    logger.wtf('Schwerwiegender Fehler Nachricht');
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
