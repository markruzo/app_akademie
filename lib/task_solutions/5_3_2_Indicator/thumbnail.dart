import 'package:cached_network_image/cached_network_image.dart';
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
        title: const Text('Thumbnail'),
        // backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: CachedNetworkImage(
            imageUrl:
                'https://images.pexels.com/photos/3433366/pexels-photo-3433366.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
            placeholder: (context, url) {
              return Image.network(
                'https://images.pexels.com/photos/8717989/pexels-photo-8717989.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              );
            },
          ),
        ),
      ),
    );
  }
}
