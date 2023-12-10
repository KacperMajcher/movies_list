import 'package:flutter_test/flutter_test.dart';
import 'package:movies_list/features/data/data_sources/movies_remote_data_source.dart';
import 'package:movies_list/features/data/entities/api_dto.dart';
import 'package:movies_list/features/domain/models/movie.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movies_list/features/domain/repositories/movies_repository.dart';

class MockMoviesRemoteRetrofitDataSource extends Mock
    implements MoviesRemoteRetrofitDataSource {}

void main() {
  late MoviesRepository sut;
  late MockMoviesRemoteRetrofitDataSource dataSource;

  setUp(() {
    dataSource = MockMoviesRemoteRetrofitDataSource();
    sut = MoviesRepository(remoteDataSource: dataSource);
  });

  final testDTO = MovieDto(
    adult: false,
    backdropPath: 'x',
    genreIds: [1, 2, 3],
    id: 1,
    originalLanguage: 'en',
    originalTitle: 'x',
    overview: 'x',
    popularity: 1.0,
    posterPath: 'x',
    releaseDate: 'x',
    title: 'x',
    video: false,
    voteAverage: 1.0,
    voteCount: 1,
  );

  const testModel = MovieModel(
    id: '1',
    cover: 'x',
    title: 'x',
    release: 'x',
    description: 'x',
    posterPath: 'x',
  );

  final tMovieResponseDto = MovieResponseDto(
    page: 1,
    results: [testDTO],
  );

  group('MoviesRepository', () {
    test('getMoviesData should return a list of MovieModel', () async {
      when(() => dataSource.getMoviesData())
          .thenAnswer((_) async => tMovieResponseDto);
      final result = await sut.getMoviesData();
      expect(result, [testModel]);
    });

    test(
        'getMoviesDataByYear should return a list of MovieModel for a given year',
        () async {
      when(() => dataSource.getMoviesData())
          .thenAnswer((_) async => tMovieResponseDto);
      final result = await sut.getMoviesDataByYear('x');
      expect(result, [testModel]);
    });
  });
}
