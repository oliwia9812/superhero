import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_hero/blocs/favorite_super_hero/favorite_super_hero_bloc.dart';
import 'package:super_hero/domain/models/super_hero_model.dart';
import 'package:super_hero/styles/app_colors.dart';
import 'package:super_hero/styles/app_text_styles.dart';

class SuperHeroListItem extends StatefulWidget {
  final SuperHeroModel superHero;
  const SuperHeroListItem({required this.superHero, super.key});

  @override
  State<SuperHeroListItem> createState() => _SuperHeroListItemState();
}

class _SuperHeroListItemState extends State<SuperHeroListItem> {
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
          widget.superHero.images?.lg.toString() ?? '',
          height: 84.0,
        ),
      ),
      tileColor: AppColors.white,
      title: Text(
        widget.superHero.name ?? '-',
        style: AppTextStyles.listTileTitle(),
      ),
      trailing: _buildFavIcon(context),
    );
  }

  Widget _buildFavIcon(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          if (widget.superHero.isFav == true) {
            BlocProvider.of<FavoriteSuperHeroBloc>(context)
                .add(RemoveFromFavorite(id: widget.superHero.id!));
          } else if (widget.superHero.isFav == false) {
            BlocProvider.of<FavoriteSuperHeroBloc>(context)
                .add(AddToFavorite(id: widget.superHero.id!));
          }
        });
      },
      icon: Icon(
        widget.superHero.isFav ? Icons.favorite : Icons.favorite_border,
        color: widget.superHero.isFav ? AppColors.violet : AppColors.lightGray,
      ),
    );
  }
}
