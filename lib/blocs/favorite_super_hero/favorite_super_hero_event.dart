part of 'favorite_super_hero_bloc.dart';

@immutable
abstract class FavoriteSuperHeroEvent {}

class GetFavoriteList extends FavoriteSuperHeroEvent {}

class AddToFavorite extends FavoriteSuperHeroEvent {
  final int id;

  AddToFavorite({required this.id});
}

class RemoveFromFavorite extends FavoriteSuperHeroEvent {
  final int id;

  RemoveFromFavorite({required this.id});
}
