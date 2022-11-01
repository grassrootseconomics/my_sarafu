import 'package:flutter/material.dart';
import 'package:grassroots_flutter/constants/custom_color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.inputtext,
    this.height = kToolbarHeight,
    this.color = onboardHeadingColor,
  }) : super(key: key);
  final String inputtext;
  final double height;
  final Color color ;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color,
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
      title: Text(
        inputtext,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
