import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:super_hero/domain/models/super_hero_model.dart';
import 'package:super_hero/repository/super_hero_repository_impl.dart';
import 'package:super_hero/rest_models/requests/search_request.dart';
import 'package:super_hero/rest_models/super_hero.dart';
import 'package:super_hero/mappers/super_hero_mappers.dart';

part 'super_hero_event.dart';
part 'super_hero_state.dart';

class SuperHeroBloc extends Bloc<SuperHeroEvent, SuperHeroState> {
  final SuperHeroRepositoryImpl superHeroRepository;

  SuperHeroBloc({required this.superHeroRepository})
      : super(SuperHeroLoading()) {
    on<GetSuperHeroList>(_onGetSuperHero);
    on<ToggleFav>(_onToogleFav);
    on<SearchSuperHeroEvent>(_onSearchSuperHeroEvent);
  }

  List<SuperHeroModel> superHeroListModel = [];

  Future<void> _onGetSuperHero(
      GetSuperHeroList event, Emitter<SuperHeroState> emit) async {
    emit(SuperHeroLoading());

    try {
      List<SuperHero>? superHeroList =
          await superHeroRepository.fetchSuperHeroes();

      if (superHeroList != null) {
        for (SuperHero superHero in superHeroList) {
          superHeroListModel.add(superHero.mapToSuperHeroModel());
        }
      }

      emit(SuperHeroLoaded(superHeroList: superHeroListModel));
    } catch (e) {
      emit(SuperHeroError());
    }
  }

  Future<void> _onToogleFav(
      ToggleFav event, Emitter<SuperHeroState> emit) async {
    for (SuperHeroModel superHero in superHeroListModel) {
      if (superHero.id == event.id) {
        superHero.isFav = !superHero.isFav;
      }
    }
  }

  Future<void> _onSearchSuperHeroEvent(
      SearchSuperHeroEvent event, Emitter<SuperHeroState> emit) async {
    SuperHero superHero = await superHeroRepository.searchSuperHero(
        superHeroName: SearchRequest(hero: event.heroName));

    emit(SuperHeroSearch(superHeroModel: superHero.mapToSuperHeroModel()));
  }
}
