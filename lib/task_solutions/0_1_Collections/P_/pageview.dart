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
      title: 'Row Overflow',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Overflow(),
    );
  }
}

class Overflow extends StatefulWidget {
  const Overflow({super.key});

  @override
  State<Overflow> createState() => _OverflowState();
}

class _OverflowState extends State<Overflow> {
  final controller = PageController(initialPage: 0);
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => controller.previousPage(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
            ),
            icon: const Icon(Icons.arrow_circle_left_outlined),
          ),
          IconButton(
            onPressed: () => controller.nextPage(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
            ),
            icon: const Icon(Icons.arrow_circle_right_outlined),
          ),
        ],
        backgroundColor: Colors.blue,
        title: const Text(
          'PageView',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        // physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        // scrollDirection: Axis.vertical,
        // onPageChanged: (index) {
        //   print('Page ${index + 1}');
        // },
        children: <Widget>[
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text('A'),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text('B'),
            ),
          ),
        ],
      ),
    );
  }
}
