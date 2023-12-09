import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_list/features/data/data_sources/movies_remote_data_source.dart';
import 'package:movies_list/features/domain/repositories/movies_repository.dart';
import 'package:movies_list/features/presentation/pages/cubit/home_cubit.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  //Bloc (cubit)
  getIt.registerFactory(() => HomeCubit(moviesRepository: getIt()));

  //Repository
  getIt.registerFactory(() => MoviesRepository(remoteDataSource: getIt()));

  //DataSource
  getIt.registerFactory(() => MoviesRemoteRetrofitDataSource(Dio()));
}