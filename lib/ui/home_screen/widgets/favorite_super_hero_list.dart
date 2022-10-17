import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:super_hero/domain/models/super_hero_model.dart';
import 'package:flutter/material.dart';
import 'package:super_hero/ui/home_screen/widgets/favorite_super_hero_list_item.dart';

class FavoriteSuperHeroList extends StatelessWidget {
  final List<SuperHeroModel> favoriteSuperHeroList;
  const FavoriteSuperHeroList({
    required this.favoriteSuperHeroList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: _buildSeparator,
      itemCount: favoriteSuperHeroList.length,
      itemBuilder: (context, index) => FavoriteSuperHeroListItem(
          favoriteSuperHero: favoriteSuperHeroList[index]),
    );
  }

  Widget _buildSeparator(BuildContext context, int index) {
    return const SizedBox(
      height: 12.0,
    );
  }
}
