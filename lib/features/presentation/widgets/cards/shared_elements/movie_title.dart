import 'package:flutter/material.dart';

class MovieTitle extends StatelessWidget {
  const MovieTitle({
    super.key,
    required this.title,
    required this.fontSize,
  });

  final String title;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    final double dw = MediaQuery.of(context).size.width;

    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        letterSpacing: dw * .0025,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
