import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieRelease extends StatelessWidget {
  const MovieRelease({
    super.key,
    required this.release,
    required this.fontSize,
  });

  final String release;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    final double dw = MediaQuery.of(context).size.width;

    return Text(
      release,
      style: GoogleFonts.openSans(
        fontSize: fontSize,
        color: Colors.white,
        fontWeight: FontWeight.w400,
        letterSpacing: dw * .0025,
      ),
    );
  }
}
