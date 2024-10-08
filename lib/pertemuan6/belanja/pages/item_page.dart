import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/footer.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ambil arguments yang dikirim dari halaman sebelumnya dan konversikan ke model Item
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: itemArgs.name,
              child: Center(
                // Gunakan tag yang sama seperti di HomePage
                child: Image.asset(
                  itemArgs.imageUrl,
                  fit: BoxFit.cover,
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              itemArgs.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Item Price: Rp. ${itemArgs.price}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 8),
            Text(
              'Stock: ${itemArgs.stock}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 8),
            Text(
              'Rating: ${itemArgs.rating}',
              style: const TextStyle(fontSize: 20),
            ),
            const Spacer(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
