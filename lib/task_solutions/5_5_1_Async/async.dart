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
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  bool _isCooldown = false;

  Future<void> _handleButtonPress() async {
    if (_isCooldown) {
      // Der Button wurde innerhalb des Cooldowns erneut geklickt, daher ignorieren wir den Klick.
      return;
    }

    setState(() {
      _isCooldown = true;
    });

    // Funktion 1: Simuliere eine asynchrone Aufgabe, z.B. eine Netzwerkanfrage
    final future1 = Future.delayed(const Duration(seconds: 2), () {
      print('Asynchrone Aufgabe 1 abgeschlossen!');
    });

    // Funktion 2: Simuliere eine weitere asynchrone Aufgabe
    final future2 = Future.delayed(const Duration(seconds: 3), () {
      print('Asynchrone Aufgabe 2 abgeschlossen!');
    });

    // Warte auf beide Futures parallel
    await Future.wait([future1, future2]);

    print('Beide Aufgaben abgeschlossen!');

    // Setze den Cooldown zurück nach 10 Sekunden
    await Future.delayed(const Duration(seconds: 10));

    setState(() {
      _isCooldown = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asynchron'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _handleButtonPress,
          child: const Text('Klick mich'),
        ),
      ),
    );
  }
}
