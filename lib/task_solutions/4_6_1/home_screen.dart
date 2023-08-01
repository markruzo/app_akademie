import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> products = [
    'Produkt 1',
    'Produkt 2',
    'Produkt 3',
    'Produkt 4'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.favorite),
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
