import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> allImagePath = [];

  Future<void> pickImage(ImageSource src) async {
    final image = await ImagePicker().pickMultiImage();
    setState(() {
      for (int i = 0; i < image.length; i++) {
        allImagePath.add(image[i].path);
      }
    });
  }

  void removeImage(int index) {
    setState(() {
      allImagePath.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: allImagePath.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.file(File(allImagePath[index])),
                  onTap: () {
                    removeImage(index);
                  },
                  trailing: IconButton(
                    onPressed: () {
                      removeImage(index);
                    },
                    icon: const Icon(
                      Icons.delete,
                      size: 24,
                      color: Colors.blue,
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      pickImage(ImageSource.camera);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Camera'),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      pickImage(ImageSource.gallery);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('File'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
