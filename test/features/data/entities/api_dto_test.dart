import 'package:flutter_test/flutter_test.dart';
import 'package:movies_list/features/data/entities/api_dto.dart';

void main() {
  final Map<String, dynamic> testMapDto = {
    'adult': false,
    'backdrop_path': 'x',
    'genre_ids': [1, 2, 3],
    'id': 1,
    'original_language': 'en',
    'original_title': 'x',
    'overview': 'x',
    'popularity': 1.0,
    'poster_path': 'x',
    'release_date': 'x',
    'title': 'x',
    'video': false,
    'vote_average': 1.0,
    'vote_count': 1
  };

  final Map<String, dynamic> testMapResponseDto = {
    'page': 1,
    'results': [testMapDto]
  };

  group('DTO tests', () {
    test('provided Map should supply the desired Model for MovieDto', () {
      //1
      final expectedDto = MovieDto(
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
          voteCount: 1);
      //2
      final resultDto = MovieDto.fromJson(testMapDto);
      //3
      expect(resultDto, expectedDto);
    });

    test('provided Map should supply the desired Model for MovieResponseDto',
        () {
      //1
      final expectedResponseDto =
          MovieResponseDto(page: 1, results: [MovieDto.fromJson(testMapDto)]);
      //2
      final resultResponseDto = MovieResponseDto.fromJson(testMapResponseDto);
      //3
      expect(resultResponseDto, expectedResponseDto);
    });
  });
}
