import 'package:movies_list/features/data/models/movie.dart';

class MoviesRepository {
  Future<MovieModel> getMoviesList() async {
    return MovieModel(
      page: 'assets/other/test.png',
      title: 'Arcane',
      description:
          'Two sisters fight on opposite sides in the war between the cities of Piltover and Zaun, where magical technologies and conflicting beliefs clash.',
    );
  }
}
