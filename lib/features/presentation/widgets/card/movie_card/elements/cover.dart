import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  const Cover({super.key, required this.cover, required this.borderRadiusValue});

  final String cover;
  final double borderRadiusValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 222,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadiusValue),
          topRight: Radius.circular(borderRadiusValue),
        ),
        image: DecorationImage(
          image: NetworkImage('https://image.tmdb.org/t/p/w500$cover'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(0.2),
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
