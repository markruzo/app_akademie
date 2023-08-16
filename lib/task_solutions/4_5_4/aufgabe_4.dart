import 'package:flutter/material.dart';

void main() {
  runApp(ProductListViewApp());
}

class Product {
  final String title;
  final double price;

  Product(this.title, this.price);
}

class ProductListViewApp extends StatelessWidget {
  final List<Product> products = [
    Product('Produkt 1', 19.99),
    Product('Produkt 2', 14.50),
    Product('Produkt 3', 9.99),
    Product('Produkt 4', 24.75),
    Product('Produkt 5', 12.99),
    Product('Produkt 6', 7.49),
    Product('Produkt 7', 6.79),
  ];

  final List<Color> backgroundColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
    Colors.amber,
  ];

  ProductListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Produktliste'),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            final backgroundColor =
                backgroundColors[index % backgroundColors.length];

            return Container(
              color: backgroundColor,
              child: ListTile(
                leading: const Icon(Icons.shopping_cart),
                title: Text(
                  product.title,
                  style: const TextStyle(color: Colors.black),
                ),
                trailing: Container(
                  alignment: Alignment.centerRight,
                  width: 100,
                  child: Text(
                    '€${product.price.toStringAsFixed(2)}',
                    textAlign: TextAlign.right,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
