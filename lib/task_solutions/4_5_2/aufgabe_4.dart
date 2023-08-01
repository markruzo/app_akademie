// Baue eine kleine Beispiel-App, in welcher du ein Stateful Widget in ein Stateless Widget verschachtelst.

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Verschachteltes Widget')),
        body: Center(
          child: MyStatelessWidget(),
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Outer Stateless Widget'),
        SizedBox(height: 20),
        MyStatefulWidget(),
      ],
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Inner Stateful Widget'),
        Text('Counter: $counter'),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Increment'),
        ),
      ],
    );
  }
}

// MyApp ist ein Stateless Widget, das die Grundstruktur der App darstellt.
// MyStatelessWidget ist ein weiteres Stateless Widget, das das innere Stateful Widget enthält.
// MyStatefulWidget ist das Stateful Widget, das den Zählerwert verwaltet und den "Increment"-Button enthält.
// Beim Klicken auf den Button wird der Zählerwert erhöht und die build-Methode von MyStatefulWidget wird aufgerufen, um das aktualisierte Widget anzuzeigen.
// Das äußere Widget MyStatelessWidget bleibt jedoch unverändert, da es keinen internen Zustand hat und sich daher nicht aktualisiert.