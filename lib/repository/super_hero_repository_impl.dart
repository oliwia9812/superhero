import 'dart:convert';
import 'package:super_hero/repository/super_hero_repository.dart';
import 'package:super_hero/rest_models/requests/search_request.dart';
import 'package:super_hero/rest_models/super_hero.dart';
import 'package:dio/dio.dart';

class SuperHeroRepositoryImpl implements SuperHeroRepository {
  final Dio dio;
  SuperHeroRepositoryImpl(this.dio);

  @override
  Future<List<SuperHero>>? fetchSuperHeroes() async {
    try {
      final Response response = await dio.get("/api/heroes");

      List<dynamic> data = jsonDecode(
        response.data,
      );

      return data.map((superHero) => SuperHero.fromJson(superHero)).toList();
    } on DioError catch (e) {
      print(e.message);
      rethrow;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  @override
  Future<SuperHero> searchSuperHero(
      {required SearchRequest superHeroName}) async {
    try {
      final Response response =
          await dio.get("/api/", queryParameters: {"hero": superHeroName.hero});

      Map<String, dynamic> superHero = jsonDecode(
        response.data,
      );

      return SuperHero.fromJson(superHero);
    } catch (e) {
      rethrow;
    }
  }
}
