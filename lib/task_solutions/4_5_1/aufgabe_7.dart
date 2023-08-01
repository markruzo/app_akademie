import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Eigenes Widget Beispiel'),
        ),
        body: Center(
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

  MyCustomWidget({required this.message, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      padding: EdgeInsets.all(20),
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
