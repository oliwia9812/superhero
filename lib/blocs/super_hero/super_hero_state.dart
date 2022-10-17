part of 'super_hero_bloc.dart';

@immutable
abstract class SuperHeroState {}

class SuperHeroLoading extends SuperHeroState {}

class SuperHeroLoaded extends SuperHeroState {
  final List<SuperHeroModel> superHeroList;

  SuperHeroLoaded({required this.superHeroList});
}

class SuperHeroError extends SuperHeroState {}
