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
        title: const Text('Column Widget List'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Row(
            children: <Widget>[
              Text('Secondary'),
              Text('Secondary'),
              Text('Secondary'),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(30),
            color: Colors.green,
            child: const Text('Primary'),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            color: Colors.red,
            child: const Text('Primary'),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            color: Colors.blue,
            child: const Text('Primary'),
          ),
        ],
      ),
    );
  }
}
