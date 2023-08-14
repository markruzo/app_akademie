import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Custom Button',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: CustomMaterialButton(
            onPressed: () {
              // Handle button press
              print('Button pressed!');
            },
            text: 'Buttom',
          ),
        ),
      ),
    );
  }
}

class CustomMaterialButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  CustomMaterialButton({required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          color: Colors.blue,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(8.0),
            onTap: onPressed,
            splashColor: Colors.white.withOpacity(0.3),
            highlightColor: Colors.transparent,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
