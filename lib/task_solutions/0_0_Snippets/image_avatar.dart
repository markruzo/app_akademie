import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImageAvatar extends StatefulWidget {
  const ImageAvatar({Key? key}) : super(key: key);

  @override
  State<ImageAvatar> createState() => _ImageAvatarState();
}

class _ImageAvatarState extends State<ImageAvatar> {
  String image = '';

  Future pickImage() async {
    final tempImage = await ImagePicker().pickImage(source: ImageSource.camera);

    if (tempImage != null) {
      setState(() {
        image = tempImage.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pickImage();
      },
      child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: image.isEmpty
              ? const Icon(Icons.person, size: 100)
              : CircleAvatar(
                  backgroundImage: FileImage(File(image)),
                  radius: 100,
                ),
        ),
      ),
    );
  }
}
