import 'package:flutter/material.dart';
import 'package:super_hero/domain/models/super_hero_model.dart';
import 'package:super_hero/rest_models/powerstats.dart';
import 'package:super_hero/styles/app_colors.dart';
import 'package:super_hero/styles/app_text_styles.dart';
import 'package:super_hero/ui/detail_screen/widgets/powerstats.dart';
import 'package:super_hero/ui/home_screen/widgets/custom_back_button.dart';
import 'package:super_hero/ui/widgets/favorite_button.dart';

class DetailScreen extends StatefulWidget {
  final SuperHeroModel superHero;

  const DetailScreen({required this.superHero, super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  IconData? _getIcon(String? gender) {
    switch (gender) {
      case 'Female':
        return Icons.female;
      case 'Male':
        return Icons.male;
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Stack(
          children: [
            _buildHeader(context),
            _buildBody(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Stack(
      children: [
        FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 0.5,
          child: Container(
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: NetworkImage(
                  widget.superHero.images!.lg.toString(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 16.0,
          right: 16.0,
          top: 16.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildHeaderButton(const CustomBackButton()),
              _buildHeaderButton(FavoriteButton(superHero: widget.superHero)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeaderButton(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.glass,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }

  Widget _buildBody() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
        alignment: Alignment.bottomCenter,
        widthFactor: 1,
        heightFactor: 0.5,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: AppColors.appBackground,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTitle(),
                _buildPowerstats(),
                _buildExpansionTile("Appearance"),
                _buildExpansionTile("Biography"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.superHero.name ?? '-',
          style: AppTextStyles.title(),
        ),
        Icon(
          _getIcon(widget.superHero.appearance?.gender),
        ),
      ],
    );
  }

  Widget _buildPowerstats() {
    return PowerstatsWidget(superHeroModel: widget.superHero);
  }

  Widget _buildExpansionTile(String? title) {
    return ExpansionTile(
      childrenPadding: const EdgeInsets.only(bottom: 12.0),
      collapsedIconColor: AppColors.primary,
      iconColor: AppColors.violet,
      tilePadding: EdgeInsets.zero,
      title: Text(
        title ?? '',
        style: AppTextStyles.listTileTitle(),
      ),
      children: [
        if (title == "Appearance") ...[
          _buildExpansionTileRow(
              "Eye color: ", widget.superHero.appearance?.eyeColor),
          _buildExpansionTileRow(
              "Hair color: ", widget.superHero.appearance?.hairColor),
          _buildExpansionTileRow(
              "Height: ", widget.superHero.appearance?.height),
          _buildExpansionTileRow(
              "Weight: ", widget.superHero.appearance?.weight),
        ] else if (title == "Biography") ...[
          _buildExpansionTileRow(
              "Full name: ", widget.superHero.biography?.fullName),
          _buildExpansionTileRow(
              "Place of birth: ", widget.superHero.biography?.placeOfBirth),
          _buildExpansionTileRow(
              "Publisher: ", widget.superHero.biography?.publisher),
        ],
      ],
    );
  }

  Widget _buildExpansionTileRow(String key, String? value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            key,
            style: AppTextStyles.listTileTitleSmall(),
          ),
          Flexible(child: Text(value ?? '-')),
        ],
      ),
    );
  }
}
