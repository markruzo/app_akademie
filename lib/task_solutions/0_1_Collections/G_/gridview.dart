import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grid Vew',
      home: GridVewSample(),
    );
  }
}

class GridVewSample extends StatelessWidget {
  const GridVewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Vew Sample'),
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(16.0),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: [
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.green),
              padding: const EdgeInsets.all(8.0),
              child: const Center(child: Text('Grid Count')),
            ),
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.yellow),
              padding: const EdgeInsets.all(8.0),
              child: const Center(child: Text('Grid Count')),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.orange,
              ),
              padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
              child: const Text('Grid Count'),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.purple,
              ),
              padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
              child: const Text('Grid Count'),
            ),
            Container(
              color: Colors.red,
              child: const Center(child: Text('Grid Count')),
            ),
            Container(
              color: Colors.red,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'Grid Count',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.red),
              padding: const EdgeInsets.all(8.0),
              child: const Center(child: Text('Grid Count')),
            ),
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.amber),
              padding: const EdgeInsets.all(8.0),
              child: const Center(child: Text('Grid Count')),
            ),
          ],
        ),
      ),
    );
  }
}
