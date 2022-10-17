import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_hero/blocs/favorite_super_hero/favorite_super_hero_bloc.dart';
import 'package:super_hero/blocs/super_hero/super_hero_bloc.dart';
import 'package:super_hero/domain/models/super_hero_model.dart';
import 'package:super_hero/styles/app_colors.dart';
import 'package:super_hero/ui/home_screen/widgets/favorite_super_hero_list.dart';
import 'package:super_hero/ui/home_screen/widgets/search_super_hero.dart';
import 'package:super_hero/ui/home_screen/widgets/super_hero_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: _selectedIndex == 0 ? _buildAppBar() : null,
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(
          horizontal: 12.0,
        ),
        child: _selectedIndex == 0
            ? _showSuperHeroView()
            : _showFavoritesSuperHeroView(),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(84.0),
      child: AppBar(
        backgroundColor: AppColors.appBackground,
        shadowColor: Colors.transparent,
        title: const SearchSuperHero(),
      ),
    );
  }

  Widget _showSuperHeroView() {
    return BlocBuilder<SuperHeroBloc, SuperHeroState>(
      builder: (context, state) {
        if (state is SuperHeroLoading) {
          return _buildProgressIndicator();
        }
        if (state is SuperHeroLoaded) {
          return _buildHeroList(state.superHeroList);
        }
        if (state is SuperHeroError) {
          return _buildError();
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  Widget _showFavoritesSuperHeroView() {
    return BlocBuilder<FavoriteSuperHeroBloc, FavoriteSuperHeroState>(
        builder: (context, state) {
      if (state is FavoriteSuperHeroEmpty) {
        return _buildListIsEmpty();
      }
      if (state is FavoriteSuperHeroLoading) {
        return _buildProgressIndicator();
      }
      if (state is FavoriteSuperHeroLoaded) {
        return _buildFavoriteHeroList(state.favoriteSuperHeroList);
      }
      if (state is FavoriteSuperHeroError) {
        return _buildError();
      } else {
        return const SizedBox.shrink();
      }
    });
  }

  Widget _buildProgressIndicator() {
    return const Center(
        child: CircularProgressIndicator(
      color: AppColors.primary,
    ));
  }

  Widget _buildHeroList(List<SuperHeroModel> superHeroList) {
    return SuperHeroList(
      superHeroList: superHeroList,
    );
  }

  Widget _buildFavoriteHeroList(List<SuperHeroModel> favoriteSuperHeroList) {
    return FavoriteSuperHeroList(favoriteSuperHeroList: favoriteSuperHeroList);
  }

  Widget _buildListIsEmpty() {
    return Text("You don't have favorite superhero :(");
  }

  Widget _buildError() {
    return const Text('Something went wrong. Try again later!');
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: AppColors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Favorite',
          icon: Icon(Icons.favorite_border),
        ),
      ],
      unselectedItemColor: AppColors.primary,
      selectedItemColor: AppColors.violet,
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}
