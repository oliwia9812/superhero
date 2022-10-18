import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_hero/blocs/super_hero/super_hero_bloc.dart';
import 'package:super_hero/styles/app_colors.dart';
import 'package:super_hero/ui/detail_screen/detail_screen.dart';

class SearchSuperHero extends StatelessWidget {
  SearchSuperHero({super.key});

  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<SuperHeroBloc, SuperHeroState>(
      listener: (context, state) {
        if (state is SuperHeroSearch) {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) =>
                    DetailScreen(superHero: state.superHeroModel)),
          );
          _searchController.clear();
        }
      },
      child: TextField(
        textInputAction: TextInputAction.search,
        controller: _searchController,
        onSubmitted: (value) {
          BlocProvider.of<SuperHeroBloc>(context)
              .add(SearchSuperHeroEvent(heroName: value));
        },
        cursorColor: AppColors.primary,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30.0),
          ),
          hintStyle: const TextStyle(
            color: AppColors.lightGray,
          ),
          hintText: "Search SuperHero",
          filled: true,
          fillColor: AppColors.white,
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.lightGray,
            size: 20.0,
          ),
          prefixIconColor: Colors.red,
        ),
      ),
    );
  }
}
