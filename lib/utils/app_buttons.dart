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
    return MaterialButton(
      onPressed: () {},
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      focusColor: Colors.grey.shade400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          height: 50,
          width: 50,
          color: color,
          padding: EdgeInsets.all(10),
          child: icon,
        ),
      ),
    );
  }
}
