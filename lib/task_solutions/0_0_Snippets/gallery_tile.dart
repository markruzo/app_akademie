import 'dart:io';

import 'package:flutter/material.dart';

class GalleryTile extends StatelessWidget {
  final String image;
  const GalleryTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.file(File(image));
  }
}
