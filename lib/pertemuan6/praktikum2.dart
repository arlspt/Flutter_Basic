// kode di bawah diambil dari main.dart praktikum 2

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor; //mendapatkan warna utama tema

    Widget buttonSection = Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceEvenly, //menyebar rata pada baris
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    return MaterialApp(
      title: 'Flutter layout: Muhammad Ariel Saputra dan 2241720034 Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo Ariel'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment
              .start, // Mengatur crossAxis agar dimulai dari kiri
          children: [
            titleSection, // Menampilkan titleSection di bagian atas
            buttonSection, // Menampilkan buttonSection di bawah titleSection
          ],
        ),
      ),
    );
  }
}

//mengatur button
Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
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
