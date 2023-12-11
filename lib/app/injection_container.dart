import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_list/app/injection_container.config.dart';
import 'package:movies_list/core/config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();

@module
abstract class RegisterModule {
  @Named("BaseUrl")
  String get baseUrl => Config.baseUrl;

  @Named("ApiKey")
  String get apiKey => Config.apiKey;

  @lazySingleton
  Dio dio(@Named('BaseUrl') String url, @Named('ApiKey') String apiKey) =>
      Dio(BaseOptions(baseUrl: url, queryParameters: {'api_key': apiKey}));
}
