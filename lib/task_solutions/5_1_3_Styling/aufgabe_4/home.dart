import 'package:flutter/material.dart';
import 'app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Theme',
      theme: AppTheme.lightTheme(),
      home: CustomHome(),
    );
  }
}

class CustomHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Theme'),
      ),
      body: Center(
        child: Text('Custom Theme mit DM Sans und Light'),
      ),
    );
  }
}
