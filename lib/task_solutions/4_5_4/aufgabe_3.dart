import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('A3 SizedBox'),
        ),
        body: const MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  child: const Center(
                    child: Text(
                      'A',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ),
              // SizedBox(width: 16),
              Expanded(
                child: Container(
                  color: Colors.green,
                  height: 100,
                  child: const Center(
                    child: Text(
                      'B',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // SizedBox(height: 16), // Add spacing between the two rows
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  height: 100,
                  child: const Center(
                    child: Text(
                      'C',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ),
              // SizedBox(width: 16),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  height: 100,
                  child: const Center(
                    child: Text(
                      'D',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // SizedBox(height: 16),
          Container(
            color: Colors.amber,
            height: 100,
            child: const Center(
              child: Text(
                'E',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          // SizedBox(height: 16),
          Container(
            color: Colors.purple,
            height: 100,
            child: const Center(
              child: Text(
                'F',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          // SizedBox(height: 16),
          Expanded(
            child: Container(
              color: Colors.green,
              height: 100,
              // width: 100,
              child: const Center(
                child: Text(
                  'G',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ),
          // SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  height: 100,
                  child: const Center(
                    child: Text(
                      'H',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ),
              // SizedBox(width: 16),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  height: 100,
                  child: const Center(
                    child: Text(
                      'I',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
