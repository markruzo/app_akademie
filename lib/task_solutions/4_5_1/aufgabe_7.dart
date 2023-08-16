import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Eigenes Widget Beispiel'),
        ),
        body: const Center(
          child: MyCustomWidget(
            message: 'Hallo aus meinem eigenen Widget!',
            textColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}

class MyCustomWidget extends StatelessWidget {
  final String message;
  final Color textColor;

  const MyCustomWidget({super.key, required this.message, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      padding: const EdgeInsets.all(20),
      child: Text(
        message,
        style: TextStyle(
          fontSize: 24,
          color: textColor,
        ),
      ),
    );
  }
}
