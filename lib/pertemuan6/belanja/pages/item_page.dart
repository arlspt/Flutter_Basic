import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final String itemName;
  final int itemPrice;

  // Constructor untuk menerima data item dari halaman sebelumnya
  ItemPage({required this.itemName, required this.itemPrice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail $itemName'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama Barang: $itemName',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Harga: Rp $itemPrice',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
