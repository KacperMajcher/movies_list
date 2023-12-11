import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_list/features/data/entities/api_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'movies_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class MoviesRemoteRetrofitDataSource {
  @factoryMethod
  factory MoviesRemoteRetrofitDataSource(Dio dio) =
      _MoviesRemoteRetrofitDataSource;

  @GET(
      '/movie?include_adult=false&include_video=false&language=en-US&sort_by=popularity.desc')
  Future<MovieResponseDto> getMoviesData();
}
