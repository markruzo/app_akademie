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
      title: 'Stack Overflow',
      home: StackOverflow(),
    );
  }
}

class StackOverflow extends StatelessWidget {
  const StackOverflow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F0E9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFF6137),
        title: const Text('Stack Overflow'),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(32),
            child: buildImages(),
          ),
        ],
      ),
    );
  }

  Widget buildImages() {
    const urlImage1 =
        'https://images.pexels.com/photos/16550526/pexels-photo-16550526/free-photo-of-berge-sommer-gras-see.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load';
    const urlImage2 =
        'https://images.pexels.com/photos/13156603/pexels-photo-13156603.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load';
    const urlImage3 =
        'https://images.pexels.com/photos/18056645/pexels-photo-18056645/free-photo-of-holz-tier-blatt-baum.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load';
    return Stack(
      children: [
        buildImage(
          urlImage: urlImage1,
          margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 0),
        ),
        buildImage(
          urlImage: urlImage2,
          margin: const EdgeInsets.symmetric(horizontal: 10).copyWith(top: 20),
        ),
        buildImage(
          urlImage: urlImage3,
          margin: const EdgeInsets.symmetric(horizontal: 0).copyWith(top: 40),
        ),
      ],
    );
  }

  Widget buildImage({
    required String urlImage,
    required EdgeInsets margin,
  }) =>
      Container(
        margin: margin,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            margin: margin, // Fehlender Margin im Container
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(urlImage),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.25),
                    BlendMode.darken,
                  )),
            ),
          ),
        ),
      );
}
