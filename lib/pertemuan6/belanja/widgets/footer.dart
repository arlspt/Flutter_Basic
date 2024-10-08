import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.grey[100],
      width: double.infinity, //menjadi full kiri kanan
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Muhammad Ariel Saputra',
            style: TextStyle(fontSize: 13),
          ),
          Text(
            '2241720034',
            style: TextStyle(fontSize: 13),
          ),
        ],
      ),
    );
  }
}
