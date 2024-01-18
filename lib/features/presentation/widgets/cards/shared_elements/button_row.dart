import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow(
      {super.key,
      required this.text,
      required this.icon,
      required this.iconColor});

  final String text;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    final double dw = MediaQuery.of(context).size.width;
    final double dh = MediaQuery.of(context).size.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: dh * .027, color: iconColor),
        SizedBox(width: dw * .007),
        Text(
          text,
          style: GoogleFonts.openSans(
            color: iconColor,
            fontSize: dh * .019,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(width: dw * .007),
      ],
    );
  }
}

//button settings
