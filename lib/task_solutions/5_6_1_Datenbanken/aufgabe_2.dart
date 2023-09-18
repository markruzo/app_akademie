import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  final TextEditingController _textFieldController = TextEditingController();
  String savedText = '';

  Future<void> _saveText() async {
    final prefs = await SharedPreferences.getInstance();
    const key = 'text_key';
    final value = _textFieldController.text;
    await prefs.setString(key, value);
    setState(() {
      savedText = value;
    });
  }

  Future<void> _loadText() async {
    final prefs = await SharedPreferences.getInstance();
    const key = 'text_key';
    final value = prefs.getString(key) ?? '';
    setState(() {
      savedText = value;
    });
  }

  Future<void> _deleteText() async {
    final prefs = await SharedPreferences.getInstance();
    const key = 'text_key';
    await prefs.remove(key);
    setState(() {
      savedText = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _textFieldController,
              decoration: const InputDecoration(labelText: 'Text eingeben'),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: _saveText,
                  child: const Text('Speichern'),
                ),
                ElevatedButton(
                  onPressed: _loadText,
                  child: const Text('Laden'),
                ),
                ElevatedButton(
                  onPressed: _deleteText,
                  child: const Text('Löschen'),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Text('Gespeicherter Text: $savedText'),
          ],
        ),
      ),
    );
  }
}
