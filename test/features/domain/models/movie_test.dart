import 'package:flutter_test/flutter_test.dart';
import 'package:movies_list/features/domain/models/movie.dart';

void main() {
  final Map<String, dynamic> testMap = {
    'id': 'x',
    'backdrop_path': 'x',
    'original_title': 'x',
    'release_date': 'x',
    'overview': 'x',
    'poster_path': 'x'
  };

  test('provided Map should supply the desired Model ', () {
    //1
    const expected = MovieModel(
        id: 'x',
        cover: 'x',
        title: 'x',
        release: 'x',
        description: 'x',
        posterPath: 'x');
    //2
    final result = MovieModel.fromJson(testMap);
    //3
    expect(result, expected);
  });
}
