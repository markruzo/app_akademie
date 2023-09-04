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
      title: 'Custom Banner',
      home: CustomBanner(),
    );
  }
}

class CustomBanner extends StatefulWidget {
  const CustomBanner({Key? key}) : super(key: key);

  @override
  State<CustomBanner> createState() => _CustomBannerState();
}

class _CustomBannerState extends State<CustomBanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F0E9),
      appBar: AppBar(
        elevation: 0,
        title: const Text('Custom Banner'),
        backgroundColor: const Color(0xFFFF6137),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(80),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(56),
            backgroundColor: const Color(0xFFFF6137),
            textStyle: const TextStyle(
              fontSize: 20,
            ),
          ),
          onPressed: showBanner,
          child: const Text('Show Banner'),
        ),
      ),
    );
  }

  void showBanner() {
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        padding: const EdgeInsets.all(16),
        leadingPadding: const EdgeInsets.only(right: 16),
        leading: const Icon(
          Icons.arrow_circle_right,
          color: Color(0xFFF2F0E9),
          size: 32,
        ),
        backgroundColor: const Color(0xFF260509),
        content: const Text('Hi, ich bin Mario!'),
        contentTextStyle:
            const TextStyle(color: Color(0xFFF2F0E9), fontSize: 18),
        actions: [
          TextButton(
            onPressed: hideBanner,
            child: const Text(
              'SUBMIT',
              style: TextStyle(
                color: Color(0xFFF2F0E9),
              ),
            ),
          ),
          TextButton(
            onPressed: hideBanner,
            child: const Text(
              'HIDE',
              style: TextStyle(
                color: Color(0xFFF2F0E9),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void hideBanner() {
    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
  }
}
