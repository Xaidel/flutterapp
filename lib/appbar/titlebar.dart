import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget implements PreferredSizeWidget {
  const TitleBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(235.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF55D5C),
      child: const Image(
        image: AssetImage("assets/obe_logo.png"),
        width: 500.0,
      ),
    );
  }
}
