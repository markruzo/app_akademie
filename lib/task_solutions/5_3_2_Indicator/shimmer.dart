import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shimmer',
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
        title: const Text('Shimmer'),
        // backgroundColor: Colors.white,
      ),
      body: Center(
        child: Image.network(
          'https://images.pexels.com/photos/3433366/pexels-photo-3433366.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
          loadingBuilder: (context, image, loadingProgress) {
            return loadingProgress == null
                ? image
                : Shimmer.fromColors(
                    // direction: ShimmerDirection.btt,
                    baseColor: Colors.white,
                    highlightColor: Colors.grey.shade100,
                    child: Container(color: Colors.white));
          },
        ),
      ),
    );
  }
}
