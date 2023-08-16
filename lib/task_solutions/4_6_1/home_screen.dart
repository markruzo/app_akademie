import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> products = [
    'Produkt 1',
    'Produkt 2',
    'Produkt 3',
    'Produkt 4',
    'Produkt 4',
    'Produkt 4',
    'Produkt 4',
    'Produkt 4',
    'Produkt 4',
    'Produkt 4',
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.favorite),
              title: Text(products[index]),
              onTap: () {
                Navigator.pushNamed(context, '/details',
                    arguments: products[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
