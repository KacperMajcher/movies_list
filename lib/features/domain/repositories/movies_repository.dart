import 'package:injectable/injectable.dart';
import 'package:movies_list/features/data/data_sources/movies_remote_data_source.dart';
import 'package:movies_list/features/data/entities/api_dto.dart';
import 'package:movies_list/features/domain/models/movie.dart';

@injectable
class MoviesRepository {
  MoviesRepository({required this.remoteDataSource});

  final MoviesRemoteRetrofitDataSource remoteDataSource;

  Future<List<MovieModel>> getMoviesData() async {
    final MovieResponseDto response = await remoteDataSource.getMoviesData();
    final List<MovieModel> movies = response.results.map((movieDto) {
      return MovieModel(
        id: movieDto.id.toString(),
        cover: movieDto.backdropPath,
        title: movieDto.originalTitle,
        release: movieDto.releaseDate,
        description: movieDto.overview,
      );
    }).toList();
    return movies;
  }
}