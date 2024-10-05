import 'package:flutter/material.dart';
import 'pertemuan6/belanja/pages/home_page.dart';
import 'pertemuan6/belanja/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute:
        '/', // Mendefinisikan halaman awal sebagai '/' yaitu ke HomePage
    routes: {
      '/': (context) => HomePage(), // Route untuk halaman HomePage
      '/item': (context) => ItemPage(
            // Ketika menavigasi ke halaman ItemPage, data itemName dan itemPrice harus diterima
            itemName: ModalRoute.of(context)!.settings.arguments as String,
            itemPrice: ModalRoute.of(context)!.settings.arguments as int,
          ),
    },
  ));
}
