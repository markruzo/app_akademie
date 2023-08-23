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
      title: 'Meine App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MeineApp(),
    );
  }
}

class MeineApp extends StatelessWidget {
  const MeineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meine App'),
      ),
      body: ListView(
          scrollDirection: Axis.horizontal,
          addAutomaticKeepAlives: false,
          children: [
            Container(
              color: Colors.blue,
              height: 500,
              width: 500,
            ),
            Container(
              color: Colors.green,
              height: 500,
              width: 500,
            ),
            Container(
              color: Colors.yellow,
              height: 500,
              width: 500,
            ),
            Container(
              color: Colors.red,
              height: 500,
              width: 500,
            ),
          ]),
    );
  }
}
