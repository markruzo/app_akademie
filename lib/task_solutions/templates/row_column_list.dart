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
      title: 'Column Widget List',
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
          title: const Text('Button / Icons'),
        ),
        body: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue,
              child: const Text('Column'),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue,
              child: const Text('Column'),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue,
              child: const Text('Column'),
            ),
          ],
        ));
  }
}
