part of 'super_hero_bloc.dart';

@immutable
abstract class SuperHeroEvent {}

class GetSuperHeroList extends SuperHeroEvent {}

class ToggleFav extends SuperHeroEvent {
  int id;
  ToggleFav({required this.id});
}

class SearchSuperHeroEvent extends SuperHeroEvent {
  final String heroName;

  SearchSuperHeroEvent({required this.heroName});
}
