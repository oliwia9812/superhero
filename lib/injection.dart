import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:super_hero/constants.dart';
import 'package:super_hero/repository/super_hero_repository_impl.dart';

class Injection {
  static final GetIt _getIt = GetIt.instance;
  static final Injection _instance = Injection._();
  get x => _getIt;

  factory Injection() => _instance;

  Injection._() {
    initDio();
    initNetworkRepositories(dio: _getIt.get<Dio>());
  }

  void initDio() {
    final Dio dio = Dio();

    dio.options
      ..baseUrl = "https://superhero-search.p.rapidapi.com"
      ..headers = {
        "X-RapidAPI-Key": Constants.apiKey,
        "X-RapidAPI-Host": 'superhero-search.p.rapidapi.com',
        "content-type": "application/json",
      };

    _getIt.registerSingleton(dio);
  }

  void initNetworkRepositories({required Dio dio}) {
    _getIt.registerFactory(() => SuperHeroRepositoryImpl(dio));
  }

  T get<T extends Object>([
    String? instanceName,
  ]) {
    return _getIt.get<T>(
      instanceName: instanceName,
    );
  }
}
