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
          width: 200,
          height: 200,
          child: CircularProgressIndicator(
            strokeWidth: 6,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.black),
            backgroundColor: Colors.grey[100],
            value: null, // null
            semanticsLabel: 'Custom Loading Indicator',
          ),
        ),
      ),
    );
  }
}
