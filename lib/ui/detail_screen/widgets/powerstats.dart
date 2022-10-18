import 'package:flutter/material.dart';
import 'package:super_hero/domain/models/super_hero_model.dart';
import 'package:super_hero/styles/app_text_styles.dart';
import 'package:super_hero/ui/detail_screen/widgets/powerstats_item.dart';

class PowerstatsWidget extends StatelessWidget {
  final SuperHeroModel superHeroModel;
  const PowerstatsWidget({required this.superHeroModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Powerstats',
            style: AppTextStyles.listTileTitle(),
          ),
          const SizedBox(
            height: 8.0,
          ),
          PowerstatsItem(
            label: "Power",
            value: superHeroModel.powerstats!.power!,
          ),
          PowerstatsItem(
            label: "Intelligence",
            value: superHeroModel.powerstats!.intelligence!,
          ),
          PowerstatsItem(
            label: "Strength",
            value: superHeroModel.powerstats!.strength!,
          ),
        ],
      ),
    );
  }
}
