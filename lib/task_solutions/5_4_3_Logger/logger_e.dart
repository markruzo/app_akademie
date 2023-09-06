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

  void _logVerbose() {
    logger.v("Verbose Nachricht");
  }

  void _logDebug() {
    logger.d("Debug Nachricht");
  }

  void _logInfo() {
    logger.i("Info Nachricht");
  }

  void _logWarning() {
    logger.w("Warnung Nachricht");
  }

  void _logError() {
    logger.e("Fehler Nachricht");
  }

  void _logWtf() {
    logger.wtf("Schwerwiegender Fehler Nachricht");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logging-App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _logVerbose,
              child: const Text('Verbose Log'),
            ),
            ElevatedButton(
              onPressed: _logDebug,
              child: const Text('Debug Log'),
            ),
            ElevatedButton(
              onPressed: _logInfo,
              child: const Text('Info Log'),
            ),
            ElevatedButton(
              onPressed: _logWarning,
              child: const Text('Warning Log'),
            ),
            ElevatedButton(
              onPressed: _logError,
              child: const Text('Error Log'),
            ),
            ElevatedButton(
              onPressed: _logWtf,
              child: const Text('WTF Log'),
            ),
          ],
        ),
      ),
    );
  }
}
