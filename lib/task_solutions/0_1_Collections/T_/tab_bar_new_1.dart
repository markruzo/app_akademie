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
      home: TabBarNew(),
    );
  }
}

class TabBarNew extends StatelessWidget {
  const TabBarNew({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Bar'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.circle_outlined),
                text: 'Erster Tab',
              ),
              Tab(icon: Icon(Icons.circle_outlined), text: 'Zweiter Tab'),
              Tab(icon: Icon(Icons.circle_outlined), text: 'Dritter Tab'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('Erster Tab'),
            ),
            Center(
              child: Text('Zweiter Tab'),
            ),
            Center(
              child: Text('Dritter Tab'),
            ),
          ],
        ),
      ),
    );
  }
}
