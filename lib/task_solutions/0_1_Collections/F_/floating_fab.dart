import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Floating FAB',
      home: NetImage(),
    );
  }
}

class NetImage extends StatefulWidget {
  const NetImage({Key? key}) : super(key: key);

  @override
  State<NetImage> createState() => _NetImageState();
}

class _NetImageState extends State<NetImage> {
  Future<void> showToast(String message) async {
    await Fluttertoast.cancel();

    Fluttertoast.showToast(
        msg: message, fontSize: 18, backgroundColor: const Color(0xFFFF6137));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F0E9),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: const Color(0xFF260509),
        overlayColor: Colors.black,
        overlayOpacity: 0.4,
        spacing: 4,
        spaceBetweenChildren: 4,
        closeManually: false,
        // onOpen: () => showToast('Open'),
        // onClose: () => showToast('Closed'),
        children: [
          SpeedDialChild(
            child: const Icon(
              Icons.task,
              color: Color(0xFF260509),
            ),
            backgroundColor: const Color(0xFFF8E469),
            label: 'Task',
            onTap: () {
              showToast('Task');
            },
          ),
          SpeedDialChild(
            child: const Icon(
              Icons.copy,
              color: Color(0xFF260509),
            ),
            backgroundColor: const Color(0xFFF8E469),
            label: 'Copy',
            onTap: () {
              showToast('Copy');
            },
          ),
          SpeedDialChild(
            child: const Icon(
              Icons.upload,
              color: Color(0xFF260509),
            ),
            backgroundColor: const Color(0xFFF8E469),
            label: 'Upload',
            onTap: () {
              showToast('Upload');
            },
          ),
          SpeedDialChild(
            child: const Icon(
              Icons.add,
              color: Color(0xFF260509),
            ),
            backgroundColor: const Color(0xFFF8E469),
            label: 'New',
            onTap: () {
              showToast('New');
            },
          ),
        ],
      ),
      appBar: AppBar(
        elevation: 0,
        title: const Text('Custom Floating Button'),
        backgroundColor: const Color(0xFFFF6137),
      ),
    );
  }
}
