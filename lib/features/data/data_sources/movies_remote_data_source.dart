import 'package:dio/dio.dart';

class MoviesRemoteDioDataSource {
  Future<Map<String, dynamic>?> getMoviesData() async {
    final response = await Dio().get<Map<String, dynamic>>(
        'https://api.themoviedb.org/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc&api_key=bcb3e9eb9e85d0415e3c55f0d8339031');
    return response.data;
  }
}
