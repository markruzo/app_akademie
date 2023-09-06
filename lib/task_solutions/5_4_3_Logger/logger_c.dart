import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(const MyApp());
}

final customLogger = Logger(
  level: Level.warning,
  printer: PrettyPrinter(),
);

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

// Aufgabe 3: Logger mit benutzerdefinierten Konfigurationen verwenden

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void _logMessage() {
    customLogger.w("Warnung Nachricht");
    customLogger.e("Error Nachricht");
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
