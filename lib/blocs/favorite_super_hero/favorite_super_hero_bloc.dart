import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:bloc/src/bloc.dart';
import 'package:super_hero/blocs/super_hero/super_hero_bloc.dart';
import 'package:super_hero/domain/models/super_hero_model.dart';

part 'favorite_super_hero_event.dart';
part 'favorite_super_hero_state.dart';

class FavoriteSuperHeroBloc
    extends Bloc<FavoriteSuperHeroEvent, FavoriteSuperHeroState> {
  SuperHeroBloc superHeroBloc;

  FavoriteSuperHeroBloc({required this.superHeroBloc})
      : super(FavoriteSuperHeroLoading()) {
    on<GetFavoriteList>(_onGetFavoriteList);
    on<AddToFavorite>(_onAddToFavorite);
    on<RemoveFromFavorite>(_onRemoveFromFavorite);
  }

  List<SuperHeroModel> favoriteSuperHeroList = [];

  Future<void> _onGetFavoriteList(
      GetFavoriteList event, Emitter<FavoriteSuperHeroState> state) async {
    if (favoriteSuperHeroList.isEmpty) {
      emit(FavoriteSuperHeroEmpty());
    } else {
      emit(FavoriteSuperHeroLoaded(
          favoriteSuperHeroList: favoriteSuperHeroList));
    }
  }

  Future<void> _onAddToFavorite(
      AddToFavorite event, Emitter<FavoriteSuperHeroState> state) async {
    emit(FavoriteSuperHeroLoading());
    for (SuperHeroModel superHero in superHeroBloc.superHeroListModel) {
      if (superHero.id == event.id) {
        favoriteSuperHeroList.add(superHero);
        superHero.isFav = true;
      }
    }
    add(GetFavoriteList());
  }

  Future<void> _onRemoveFromFavorite(
      RemoveFromFavorite event, Emitter<FavoriteSuperHeroState> state) async {
    favoriteSuperHeroList.removeWhere((superhero) => superhero.id == event.id);

    superHeroBloc.add(ToggleFav(id: event.id));

    add(GetFavoriteList());
  }
}
