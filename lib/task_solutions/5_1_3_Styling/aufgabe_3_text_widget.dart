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
      title: 'Text Expand',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WidgetApp(),
    );
  }
}

class WidgetApp extends StatefulWidget {
  const WidgetApp({super.key});

  @override
  _WidgetAppState createState() => _WidgetAppState();
}

class _WidgetAppState extends State<WidgetApp> {
  bool isExpanded = false;

  void toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Text'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: toggleExpansion,
                child: Text(
                  'Hier steht eine langer Text. Ein sehr langer Text. Hier steht eine langer Text. Ein sehr langer Text',
                  overflow: TextOverflow.ellipsis,
                  maxLines: isExpanded ? null : 1,
                ),
              ),
              if (isExpanded)
                const Text('Hier steht eine langer Text. Ein sehr langer Text.')
            ],
          ),
        ),
      ),
    );
  }
}
