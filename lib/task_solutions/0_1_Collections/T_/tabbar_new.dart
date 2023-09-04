import 'package:flutter/material.dart';

/// Flutter code sample for [AppBar].

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Example(),
    );
  }
}

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Bar'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Work', icon: Icon(Icons.home_filled)),
              Tab(text: 'Personal', icon: Icon(Icons.star)),
              Tab(text: 'Home', icon: Icon(Icons.work)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                'Home',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Center(
              child: Text(
                'Personal',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Center(
              child: Text(
                'Work',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
