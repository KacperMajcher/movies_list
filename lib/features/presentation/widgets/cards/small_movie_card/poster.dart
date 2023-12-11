import 'package:flutter/material.dart';

class Poster extends StatelessWidget {
  const Poster(
      {super.key, required this.posterPath, required this.borderRadiusValue});

  final String posterPath;
  final double borderRadiusValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadiusValue)),
        image: DecorationImage(
          image: NetworkImage('https://image.tmdb.org/t/p/w500$posterPath'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
