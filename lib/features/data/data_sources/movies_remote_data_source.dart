import 'package:movies_list/features/data/models/movie.dart';

class MoviesMockedDataSource {
  Future<List<MovieModel>> getMovies() async {
    return [
      MovieModel(
        page: 'assets/other/test.png',
        title: 'Arcane',
        description:
            'Two sisters fight on opposite sides in the war between the cities of Piltover and Zaun, where magical technologies and conflicting beliefs clash.',
      ),
      MovieModel(
        page: 'assets/other/test.png',
        title: 'Spider-Man',
        description:
            'After getting bitten by a genetically enhanced spider, shy teen Peter Parker develops web-slinging, wall-climbing powers and meets a dangerous new foe.',
      ),
      MovieModel(
        page: 'assets/other/test.png',
        title: 'Lucifer',
        description:
            'The bored devil abandons his role as the ruler of hell and moves to Los Angeles, where he opens a nightclub and begins to be accompanied by a detective from the homicide department.',
      ),
    ];
  }
}
