import 'package:flutter/material.dart';

class FabWidget extends StatelessWidget {
  const FabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("FAB Example"),
        ),
        body: const Center(
          child: Text("Tekan tombol FAB di bawah"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Tambahkan aksi yang ingin dilakukan saat FAB ditekan
            print("FAB ditekan!");
          },
          child: const Icon(Icons.thumb_up),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}

void main() {
  runApp(const FabWidget());
}
