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
      title: 'Row Overflow',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Overflow(),
    );
  }
}

class Overflow extends StatelessWidget {
  const Overflow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FittedBox'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 400,
          height: 400,
          child: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'FittedBox',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
