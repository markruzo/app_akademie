import 'package:flutter/material.dart';
import 'styles.dart';

void main() {
  runApp(AnimalProfileApp());
}

class AnimalProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Steckbrief Lama',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: AnimalProfile(),
      ),
    );
  }
}

class AnimalProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: AppStyles.coloredBoxDecoration,
          width: double.infinity,
          height: 300,
          margin: EdgeInsets.only(
            top: AppStyles.containerMarginTop,
            left: AppStyles.containerMarginHorizontal,
            right: AppStyles.containerMarginHorizontal,
          ),
          padding: EdgeInsets.all(AppStyles.containerPadding),
          alignment: Alignment.center,
          child: Text(
            'Foto vom Lama!',
            style: AppStyles.headingTextStyle,
          ),
        ),
        SizedBox(height: 20),
        Text('Name', style: AppStyles.headingTextStyle),
        Text('Diana das Lama', style: AppStyles.contentTextStyle),
        SizedBox(height: 10),
        Text('Größe', style: AppStyles.headingTextStyle),
        Text('1,90', style: AppStyles.contentTextStyle),
        SizedBox(height: 10),
        Text('Lieblingsessen', style: AppStyles.highlightedTextStyle),
        Text('Gras', style: AppStyles.contentTextStyle),
      ],
    );
  }
}
