import 'package:flutter/material.dart';
import 'package:super_hero/domain/models/super_hero_model.dart';
import 'package:super_hero/styles/app_colors.dart';
import 'package:super_hero/styles/app_text_styles.dart';
import 'package:super_hero/ui/detail_screen/detail_screen.dart';
import 'package:super_hero/ui/widgets/favorite_button.dart';

class SuperHeroListItem extends StatefulWidget {
  final SuperHeroModel superHero;
  const SuperHeroListItem({required this.superHero, super.key});

  @override
  State<SuperHeroListItem> createState() => _SuperHeroListItemState();
}

class _SuperHeroListItemState extends State<SuperHeroListItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailScreen(
                  superHero: widget.superHero,
                )));
      },
      child: ListTile(
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
      ),
    );
  }

  Widget _buildFavIcon(BuildContext context) {
    return FavoriteButton(superHero: widget.superHero);
  }
}
