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
      theme: myCustomTheme,
      home: const MyHomePage(),
    );
  }
}

final ThemeData myCustomTheme = ThemeData(
  primaryColor: Colors.blue,
  hintColor: Colors.orange,
  fontFamily: 'Roboto',
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontSize: 16),
    bodyMedium: TextStyle(fontSize: 14, color: Colors.grey),
  ),
  // Weitere Eigenschaften hier
);

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Custom Theme",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Headline 1", style: Theme.of(context).textTheme.displayLarge),
            Text("Headline 2", style: Theme.of(context).textTheme.displayMedium),
            Text("Body Text 1", style: Theme.of(context).textTheme.bodyLarge),
            Text("Body Text 2", style: Theme.of(context).textTheme.bodyMedium),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Button"),
            ),
            const TextField(
              decoration: InputDecoration(labelText: "Text Field"),
            ),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(100),
                child: Text("Card"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
