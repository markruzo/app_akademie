import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatefulWidget {
  const MyScreen({super.key, Key? key});

  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  final TextEditingController _textFieldController = TextEditingController();
  String savedText = '';
  final String _boxName = 'textBox';

  @override
  void initState() {
    super.initState();
    _loadText();
  }

  Future<void> _saveText() async {
    final box = await Hive.openBox<String>(_boxName);
    final value = _textFieldController.text ?? '';
    await box.put('text_key', value);
    setState(() {
      savedText = value;
    });
  }

  Future<void> _loadText() async {
    final box = await Hive.openBox<String>(_boxName);
    final value = box.get('text_key', defaultValue: '') ?? '';
    setState(() {
      savedText = value;
      _textFieldController.text = value;
    });
  }

  Future<void> _deleteText() async {
    final box = await Hive.openBox<String>(_boxName);
    await box.delete('text_key');
    setState(() {
      savedText = '';
      _textFieldController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hive Persistence'),
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

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }
}
