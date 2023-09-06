import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
// import 'package:logger/logger.dart';

void main() {
  debugPrint('Was geht ab');
  debugPaintSizeEnabled = false;
  // Logger logger = Logger();
  // logger.v('Hallo Welt');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogginSample(),
    );
  }
}

class LogginSample extends StatelessWidget {
  const LogginSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Logging Sample'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            child: Column(
              children: [
                Container(
                  color: Colors.orange,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Text'),
                      Text('Text'),
                      Text('Text'),
                      Text('Text'),
                    ],
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Text'),
                      Text('Text'),
                      Text('Text'),
                      Text('Text'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color:
                Colors.white, // Hintergrundfarbe für die gesamte zweite Spalte
            child: Column(
              children: [
                Container(
                  color: Colors.red, // Hintergrundfarbe für die dritte Zeile
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Text'),
                      Text('Text'),
                      Text('Text'),
                      Text('Text'),
                    ],
                  ),
                ),
                Container(
                  color: Colors.purple, // Hintergrundfarbe für die vierte Zeile
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.add)),
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.add)),
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.add)),
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.add)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      color: Colors.amber,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Text('Body'),
                          ),
                          Center(
                            child: Text('Body'),
                          ),
                          Center(
                            child: Text('Body'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      color: Colors.purple,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.circle,
                            size: 48,
                            color: Colors.white,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Text',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          color: Colors.purple,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.circle,
                                size: 48,
                                color: Colors.white,
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Text',
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          color: Colors.purple,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.circle,
                                size: 48,
                                color: Colors.white,
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Text',
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
