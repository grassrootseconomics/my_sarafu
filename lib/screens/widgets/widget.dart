import 'package:flutter/material.dart';


Widget circleIconWithText({required Widget icon, required String text}) {
  return Column(
    children: [
      CircleAvatar(
        radius: 25,
        backgroundColor: Colors.blue[900],
        child: icon,
      ),
      Text(
        text,
        style: const TextStyle(color: Colors.white),
      )
    ],
  );
}
