import 'package:flutter/material.dart';

//AppBar di home_page.dart membutuhkan PreferredSizeWidget sebagai widget kustom
class Header extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Shopping List'),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
