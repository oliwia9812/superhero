import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_hero/blocs/favorite_super_hero/favorite_super_hero_bloc.dart';
import 'package:super_hero/domain/models/super_hero_model.dart';
import 'package:super_hero/styles/app_colors.dart';

class FavoriteButton extends StatefulWidget {
  final SuperHeroModel superHero;
  const FavoriteButton({required this.superHero, super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          if (widget.superHero.isFav) {
            BlocProvider.of<FavoriteSuperHeroBloc>(context)
                .add(RemoveFromFavorite(id: widget.superHero.id!));
          } else {
            BlocProvider.of<FavoriteSuperHeroBloc>(context)
                .add(AddToFavorite(id: widget.superHero.id!));
          }
        });
      },
      icon: widget.superHero.isFav
          ? const Icon(Icons.favorite)
          : const Icon(Icons.favorite_border),
      color: AppColors.primary,
    );
  }
}
