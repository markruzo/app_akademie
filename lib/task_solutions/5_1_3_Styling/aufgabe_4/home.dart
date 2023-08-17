import 'package:flutter/material.dart';
import 'app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Theme',
      theme: AppTheme.lightTheme(),
      home: const CustomHome(),
    );
  }
}

class CustomHome extends StatelessWidget {
  const CustomHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Theme'),
      ),
      body: const Center(
        child: Text('Custom Theme mit DM Sans und Light'),
      ),
    );
  }
}
