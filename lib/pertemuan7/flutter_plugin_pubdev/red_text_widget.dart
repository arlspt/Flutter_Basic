import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart'; //menambahkan package AutoSizeText

class RedTextWidget extends StatelessWidget {
  final String text; // Variabel untuk menyimpan teks

  // Constructor dengan parameter 'text'
  const RedTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      'Contoh Teks', // Memberikan teks langsung
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
