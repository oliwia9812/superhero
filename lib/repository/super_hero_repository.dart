import 'package:super_hero/rest_models/super_hero.dart';

abstract class SuperHeroRepository {
  Future<List<SuperHero>>? fetchSuperHeroes();

  Future<void>? searchSuperHero({required String? superHeroName});
}
