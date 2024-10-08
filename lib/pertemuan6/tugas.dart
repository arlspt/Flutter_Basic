// Catatan untuk kode yang sebelum dipecah menjadi beberapa widget

//home_page.dart

// import 'package:flutter/material.dart';
// import '../models/item.dart'; // Import model item yang telah dibuat

// class HomePage extends StatelessWidget {
//   final List<Item> items = [
//     Item(
//         name: 'Sugar',
//         price: 5000,
//         imageUrl: 'assets/images/gula.jpeg',
//         stock: 43,
//         rating: 4.5),
//     Item(
//         name: 'Salt',
//         price: 2000,
//         imageUrl: 'assets/images/garam.jpg',
//         stock: 15,
//         rating: 4.0),
//     Item(
//         name: 'Rice',
//         price: 10000,
//         imageUrl: 'assets/images/beras.jpeg',
//         stock: 24,
//         rating: 4.5),
//     Item(
//         name: 'Milk',
//         price: 15000,
//         imageUrl: 'assets/images/susu.png',
//         stock: 12,
//         rating: 5.0),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Shopping List'),
//       ),
//       body: Container(
//         margin: const EdgeInsets.all(8.0), // Margin untuk Container
//         child: GridView.builder(
//           padding: const EdgeInsets.all(8.0), // Padding untuk ListView
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2, // Menentukan jumlah kolom grid
//             crossAxisSpacing: 10, // Jarak antar kolom
//             mainAxisSpacing: 10, // Jarak antar baris
//           ),
//           itemCount: items.length, // Jumlah item di ListView
//           itemBuilder: (context, index) {
//             final item = items[index]; // Ambil item berdasarkan index
//             return GestureDetector(
//               child: InkWell(
//                 onTap: () {
//                   // Navigasi ke halaman ItemPage dengan mengirimkan item sebagai arguments
//                   Navigator.pushNamed(context, '/item', arguments: item);
//                 },
//                 child: Container(
//                   margin: const EdgeInsets.all(8.0), // Margin untuk tiap item
//                   child: Column(
//                     children: [
//                       Expanded(
//                         child: Hero(
//                           // Gunakan name atau id unik sebagai tag
//                           tag: item.name,
//                           child: Image.asset(
//                             height: 100,
//                             width: 100,
//                             item.imageUrl,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           //membuat teks ke tengah
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Text(
//                               item.name,
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Text('Price: \$${item.price}'),
//                             Text('Stock: ${item.stock}'),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Icon(Icons.star, color: Colors.amber),
//                                 Text(item.rating.toString()),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

//item_page.dart
// import 'package:flutter/material.dart';
// import 'package:pertemuan5/pertemuan6/belanja/models/item.dart';

// class ItemPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Ambil arguments yang dikirim dari halaman sebelumnya dan konversikan ke model Item
//     final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Item Details'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Hero(
//               tag: itemArgs.name,
//               child: Center(
//                 // Gunakan tag yang sama seperti di HomePage
//                 child: Image.asset(
//                   itemArgs.imageUrl,
//                   fit: BoxFit.cover,
//                   width: 200,
//                   height: 200,
//                 ),
//               ),
//             ),
//             SizedBox(height: 16),
//             Text(
//               '${itemArgs.name}',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'Item Price: \$${itemArgs.price}',
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'Stock: ${itemArgs.stock}',
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'Rating: ${itemArgs.rating}',
//               style: TextStyle(fontSize: 20),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//item.dart
// class Item {
//   String name; //menyimpan nama barang
//   int price; //menyimpan harga barang
//   String imageUrl;
//   int stock;
//   double rating;

//   // Constructor untuk inisialisasi objek Item
//   Item(
//       {required this.name,
//       required this.price,
//       required this.imageUrl,
//       required this.rating,
//       required this.stock});
// }
