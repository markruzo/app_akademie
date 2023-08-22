import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Indicator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IndicatorScreen(),
    );
  }
}

class IndicatorScreen extends StatelessWidget {
  const IndicatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Indicator Screen'),
          // backgroundColor: Colors.white,
        ),
        body: Center(
          child: Image.network(
            'https://images.pexels.com/photos/3658120/pexels-photo-3658120.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
            loadingBuilder: (context, image, loadingProgress) {
              return loadingProgress == null
                  ? image
                  : LinearProgressIndicator(
                      value: loadingProgress.cumulativeBytesLoaded /
                          (loadingProgress.expectedTotalBytes ?? 1),
                    );
            },
          ),
        ));
  }
}
