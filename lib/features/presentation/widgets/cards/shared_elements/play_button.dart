import 'package:flutter/material.dart';
import 'package:movies_list/features/presentation/widgets/cards/shared_elements/button_row.dart';

class PlayButton extends StatelessWidget {
  const PlayButton(
      {super.key, required this.backgroundColor, required this.textColor});

  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    final double dh = MediaQuery.of(context).size.height;

    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(dh * .005)),
        ),
      ),
      child:
          ButtonRow(text: 'Play', icon: Icons.play_arrow, iconColor: textColor),
    );
  }
}
