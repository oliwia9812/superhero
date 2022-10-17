part of 'favorite_super_hero_bloc.dart';

@immutable
abstract class FavoriteSuperHeroState {}

class FavoriteSuperHeroLoading extends FavoriteSuperHeroState {}

class FavoriteSuperHeroLoaded extends FavoriteSuperHeroState {
  final List<SuperHeroModel> favoriteSuperHeroList;

  FavoriteSuperHeroLoaded({required this.favoriteSuperHeroList});
}

class FavoriteSuperHeroEmpty extends FavoriteSuperHeroState {}

class FavoriteSuperHeroError extends FavoriteSuperHeroState {}
