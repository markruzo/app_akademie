import 'package:app_akademie/task_solutions/0_0_Snippets/gallery_tile.dart';
import 'package:flutter/material.dart';

class GalleryList extends StatefulWidget {
  const GalleryList({super.key, required images});

  @override
  State<GalleryList> createState() => _GalleryListState();
}

class _GalleryListState extends State<GalleryList> {
  final List<String> images = [];
  // List<GalleryTile> galleryList = [GalleryTile(image: "Test")];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: images.map((image) => GalleryTile(image: image)).toList(),
    );
  }
}
