import 'package:flutter/material.dart';
import 'package:movies_list/features/presentation/widgets/card/movie_card.dart';

const page = 'assets/other/test.png';

class MoviesList {
  static final List<Widget> moviesList = <Widget>[
    const MovieCard(
      page: page,
      title: 'Arcane',
      description:
          'Two sisters fight on opposite sides in the war between the cities of Piltover and Zaun, where magical technologies and conflicting beliefs clash.',
    ),
    const MovieCard(
      page: page,
      title: 'Spider-Man',
      description:
          'After getting bitten by a genetically enhanced spider, shy teen Peter Parker develops web-slinging, wall-climbing powers and meets a dangerous new foe.',
    ),
    const MovieCard(
      page: page,
      title: 'Lucifer',
      description:
          'The bored devil abandons his role as the ruler of hell and moves to Los Angeles, where he opens a nightclub and begins to be accompanied by a detective from the homicide department.',
    ),
  ];
}


//list of cards displayed on the screen