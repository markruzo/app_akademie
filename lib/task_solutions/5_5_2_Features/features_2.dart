import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> showDelayedMessage() async {
    await Future.delayed(const Duration(seconds: 2));

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          title: Text('Verzögerung'),
          content: Text('Future Abgeschlossen'),
        );
      },
    );
  }

  Future<List<String>> fetchTexts() async {
    await Future.delayed(const Duration(seconds: 3));
    return ['Text 1', 'Text 2', 'Text 3'];
  }

  Future<List<String>> fetchImages() async {
    await Future.delayed(const Duration(seconds: 5));
    return ['Bild 1', 'Bild 2', 'Bild 3'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future II'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: showDelayedMessage,
              child: const Text('Verzögerung Anzeigen'),
            ),
            const SizedBox(
              height: 20,
            ),
            FutureBuilder<List<String>>(
              future: fetchTexts(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const LinearProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Fehler: ${snapshot.error}');
                } else if (snapshot.hasData) {
                  return Column(
                    children: <Widget>[
                      const Text('Text Geladen:'),
                      Column(
                        children:
                            snapshot.data!.map((text) => Text(text)).toList(),
                      )
                    ],
                  );
                } else {
                  return const Text('Warte auf Daten...');
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            FutureBuilder<List<String>>(
              future: fetchImages(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const LinearProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Fehler: ${snapshot.error}');
                } else if (snapshot.hasData) {
                  return Column(
                    children: <Widget>[
                      const Text('Bilder Geladen'),
                      Column(
                        children:
                            snapshot.data!.map((image) => Text(image)).toList(),
                      )
                    ],
                  );
                } else {
                  return const Text('Warte auf Daten...');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
