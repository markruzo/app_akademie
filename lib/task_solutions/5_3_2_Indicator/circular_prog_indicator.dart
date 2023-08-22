import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Circular Progress Indicator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circular Progress Indicator'),
      ),
      body: Center(
        child: SizedBox(
          width: 200, // Anpassung der Breite
          height: 200, // Anpassung der Höhe
          child: CircularProgressIndicator(
            strokeWidth: 6,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
            backgroundColor: Colors.grey[300],
            value: 0.6, // null
            semanticsLabel: 'Custom Loading Indicator',
          ),
        ),
      ),
    );
  }
}
