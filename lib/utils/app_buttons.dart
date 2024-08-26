import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final Icon icon;
  final Color color;

  const AppButtons({
    super.key,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      child: icon,
    );
  }
}