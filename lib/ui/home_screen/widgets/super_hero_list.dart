import 'package:flutter/material.dart';
import 'package:super_hero/domain/models/super_hero_model.dart';
import 'package:super_hero/ui/home_screen/widgets/super_hero_list_item.dart';

class SuperHeroList extends StatelessWidget {
  final List<SuperHeroModel> superHeroList;
  const SuperHeroList({required this.superHeroList, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: _buildSeparator,
      itemCount: superHeroList.length,
      itemBuilder: (context, index) => SuperHeroListItem(
        superHero: superHeroList[index],
      ),
    );
  }

  Widget _buildSeparator(BuildContext context, int index) {
    return const SizedBox(
      height: 12.0,
    );
  }
}
