// kode di bawah diambil dari main.dart praktikum 1

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Muhammad Ariel Saputra dan 2241720034 Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo Ariel'),
        ),
        body: Center(
          child: titleSection, //mengganti body dengan titleSection
        ),
      ),
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32), // Memberikan padding sebesar 32 piksel
  child: Row(
    children: [
      Expanded(
        /* soal 1*/
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Kolom diselaraskan di awal baris
          children: [
            /* soal 2*/
            Container(
              padding: const EdgeInsets.only(
                  bottom: 8.0), // Padding bawah sebesar 8 piksel
              child: const Text(
                'Wisata Gunung di Batu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Batu, Malang, Indonesia',
              style: TextStyle(color: Colors.grey), // Warna teks abu-abu
            ),
          ],
        ),
      ),
      /* soal 3*/
      Icon(
        Icons.star, //Menambahkan icon bintang
        color: Colors.red, //set warna merah
      ),
      const Text('41'), //menggunakan ukuran teks 41
    ],
  ),
);
