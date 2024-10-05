import 'package:flutter/material.dart';
import '../models/item.dart'; // Import model item yang telah dibuat

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),
    Item(name: 'Rice', price: 10000),
    Item(name: 'Milk', price: 15000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8.0), // Margin untuk Container
        child: ListView.builder(
          padding: const EdgeInsets.all(8.0), // Padding untuk ListView
          itemCount: items.length, // Jumlah item di ListView
          itemBuilder: (context, index) {
            final item = items[index]; // Ambil item berdasarkan index
            return InkWell(
              onTap: () {
                // Aksi ketika item ditekan: Navigasi ke ItemPage dan kirim data
                Navigator.pushNamed(context, '/item');
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8.0), // Margin untuk tiap item
                  child: Row(
                    children: [
                      // Menampilkan nama item
                      Expanded(
                        child: Text(
                          item.name,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      // Menampilkan harga item di sebelah kanan
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end, // Teks rata kanan
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight:
                                FontWeight.bold, // Harga ditampilkan tebal
                          ),
                        ),
                      ),
                    ],
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
