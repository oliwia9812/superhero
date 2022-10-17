import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_hero/blocs/favorite_super_hero/favorite_super_hero_bloc.dart';
import 'package:super_hero/domain/models/super_hero_model.dart';
import 'package:flutter/material.dart';
import 'package:super_hero/styles/app_colors.dart';
import 'package:super_hero/styles/app_text_styles.dart';

class FavoriteSuperHeroListItem extends StatelessWidget {
  final SuperHeroModel favoriteSuperHero;
  const FavoriteSuperHeroListItem({required this.favoriteSuperHero, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      contentPadding: const EdgeInsets.fromLTRB(8.0, 8.0, 16.0, 8.0),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Image.network(
          favoriteSuperHero.images?.lg.toString() ?? '',
          height: 84.0,
        ),
      ),
      tileColor: AppColors.white,
      title: Text(
        favoriteSuperHero.name ?? '-',
        style: AppTextStyles.listTileTitle(),
      ),
      trailing: TextButton(
        onPressed: () => BlocProvider.of<FavoriteSuperHeroBloc>(context)
            .add(RemoveFromFavorite(id: favoriteSuperHero.id!)),
        child: const Text(
          'remove',
          style: TextStyle(
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
