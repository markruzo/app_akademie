import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myCustomTheme,
      home: MyHomePage(),
    );
  }
}

final ThemeData myCustomTheme = ThemeData(
  primaryColor: Colors.blue,
  hintColor: Colors.orange,
  fontFamily: 'Roboto',
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    bodyText1: TextStyle(fontSize: 16),
    bodyText2: TextStyle(fontSize: 14, color: Colors.grey),
  ),
  // Weitere Eigenschaften hier
);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Custom Theme",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Headline 1", style: Theme.of(context).textTheme.headline1),
            Text("Headline 2", style: Theme.of(context).textTheme.headline2),
            Text("Body Text 1", style: Theme.of(context).textTheme.bodyText1),
            Text("Body Text 2", style: Theme.of(context).textTheme.bodyText2),
            ElevatedButton(
              onPressed: () {},
              child: Text("Button"),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Text Field"),
            ),
            Card(
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
