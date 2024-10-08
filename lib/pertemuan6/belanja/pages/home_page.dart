import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/header.dart';
import '../widgets/footer.dart';
import '../widgets/item_card.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      imageUrl: 'assets/images/gula.jpeg',
      stock: 43,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imageUrl: 'assets/images/garam.jpg',
      stock: 15,
      rating: 4.0,
    ),
    Item(
      name: 'Rice',
      price: 10000,
      imageUrl: 'assets/images/beras.jpeg',
      stock: 24,
      rating: 4.5,
    ),
    Item(
      name: 'Milk',
      price: 15000,
      imageUrl: 'assets/images/susu.png',
      stock: 12,
      rating: 5.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(8.0), // Padding untuk ListView
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Menentukan jumlah kolom grid
                  crossAxisSpacing: 10, // Jarak antar kolom
                  mainAxisSpacing: 10, // Jarak antar baris
                ),
                itemCount: items.length, // Jumlah item di ListView
                itemBuilder: (context, index) {
                  final item = items[index]; // Ambil item berdasarkan index
                  return ItemCard(item: item);
                },
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
