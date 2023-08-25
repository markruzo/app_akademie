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
        backgroundColor: Colors.blue,
        title: const Text(
          'Text',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            // Wrap with Expanded // Flex: 1
            child: Container(
              height: 200,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  '100',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              color: Colors.red,
              child: const Center(
                child: Text(
                  'Expanded',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
