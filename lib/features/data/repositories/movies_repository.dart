import 'package:movies_list/features/data/data_sources/movies_remote_data_source.dart';
import 'package:movies_list/features/data/models/movie.dart';

class MoviesRepository {
  MoviesRepository({required this.remoteDataSource});

  final MoviesMockedDataSource remoteDataSource;

  Future<List<MovieModel>> getArtistModels() async {
    final movies = await remoteDataSource.getMovies();
    return movies;
  }
}
