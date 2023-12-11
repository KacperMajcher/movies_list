// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:movies_list/app/injection_container.dart' as _i7;
import 'package:movies_list/features/data/data_sources/movies_remote_data_source.dart'
    as _i4;
import 'package:movies_list/features/domain/repositories/movies_repository.dart'
    as _i5;
import 'package:movies_list/features/presentation/pages/cubit/presentation_cubit.dart'
    as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i3.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i4.MoviesRemoteRetrofitDataSource>(
        () => _i4.MoviesRemoteRetrofitDataSource(gh<_i3.Dio>()));
    gh.factory<_i5.MoviesRepository>(() => _i5.MoviesRepository(
        remoteDataSource: gh<_i4.MoviesRemoteRetrofitDataSource>()));
    gh.factory<_i6.PresentationCubit>(() =>
        _i6.PresentationCubit(moviesRepository: gh<_i5.MoviesRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i7.RegisterModule {}
