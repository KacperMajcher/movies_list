import 'package:movies_list/features/data/data_sources/movies_remote_data_source.dart';
import 'package:movies_list/features/data/models/movie.dart';

class MoviesRepository {
  MoviesRepository({required this.remoteDataSource});

  final MoviesMockedDataSource remoteDataSource;

  //retrieves a list of movie models from a remote data source and converts them from JSON format to Dart objects

  Future<List<MovieModel>> getArtistModels() async {
    final json = await remoteDataSource.getMovies();
    if (json == null) {
      return [];
    }
    //converter
    return json.map((item) => MovieModel.fromJson(item)).toList();
  }
}
