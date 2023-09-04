import 'dart:ui';

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ColorfulSafeArea Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int numberOfTiles = 100;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: ColorfulSafeArea(
        color: Colors.white.withOpacity(0.7),
        overflowRules: const OverflowRules.all(true),
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              width: 300,
              height: 200,
              color: Colors.red,
            );
          },
          itemCount: numberOfTiles,
        ),
      ),
    );
  }
}
