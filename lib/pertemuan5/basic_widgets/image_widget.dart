import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  // ignore: use_super_parameters
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(image: AssetImage("logo_polinema.png"));
  }
}
