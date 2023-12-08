import 'package:movies_list/features/data/data_sources/movies_remote_data_source.dart';
import 'package:movies_list/features/domain/models/movie.dart';

class MoviesRepository {
  MoviesRepository({required this.remoteDataSource});

  final MoviesRemoteDioDataSource remoteDataSource;

  Future<List<MovieModel>> getMoviesData() async {
    final json = await remoteDataSource.getMoviesData();
    if (json == null) {
      return [];
    }
    //converter
    return (json['results'] as List).map((item) => MovieModel.fromJson(item as Map<String, dynamic>)).toList();
  }
}
