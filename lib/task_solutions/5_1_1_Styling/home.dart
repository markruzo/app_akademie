import 'package:flutter/material.dart';
import 'styles.dart';

void main() {
  runApp(const AnimalProfileApp());
}

class AnimalProfileApp extends StatelessWidget {
  const AnimalProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Steckbrief Lama',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: const AnimalProfile(),
      ),
    );
  }
}

class AnimalProfile extends StatelessWidget {
  const AnimalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: AppStyles.coloredBoxDecoration,
          width: double.infinity,
          height: 300,
          margin: const EdgeInsets.only(
            top: AppStyles.containerMarginTop,
            left: AppStyles.containerMarginHorizontal,
            right: AppStyles.containerMarginHorizontal,
          ),
          padding: const EdgeInsets.all(AppStyles.containerPadding),
          alignment: Alignment.center,
          child: const Text(
            'Foto vom Lama!',
            style: AppStyles.headingTextStyle,
          ),
        ),
        const SizedBox(height: 20),
        const Text('Name', style: AppStyles.headingTextStyle),
        const Text('Diana das Lama', style: AppStyles.contentTextStyle),
        const SizedBox(height: 10),
        const Text('Größe', style: AppStyles.headingTextStyle),
        const Text('1,90', style: AppStyles.contentTextStyle),
        const SizedBox(height: 10),
        const Text('Lieblingsessen', style: AppStyles.highlightedTextStyle),
        const Text('Gras', style: AppStyles.contentTextStyle),
      ],
    );
  }
}
