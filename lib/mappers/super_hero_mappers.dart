import 'package:super_hero/domain/models/appearance_model.dart';
import 'package:super_hero/domain/models/biography_model.dart';
import 'package:super_hero/domain/models/images_model.dart';
import 'package:super_hero/domain/models/powerstats_model.dart';
import 'package:super_hero/domain/models/super_hero_model.dart';
import 'package:super_hero/rest_models/appearance.dart';
import 'package:super_hero/rest_models/biography.dart';
import 'package:super_hero/rest_models/images.dart';
import 'package:super_hero/rest_models/powerstats.dart';
import 'package:super_hero/rest_models/super_hero.dart';

extension AppearanceMapper on Appearance {
  AppearanceModel mapToAppearanceModel() => AppearanceModel(
        eyeColor: eyeColor,
        gender: gender,
        hairColor: hairColor,
        height: height?[1] ?? "-",
        weight: weight?[1] ?? "-",
      );
}

extension BiographyMapper on Biography {
  BiographyModel mapToBiographyModel() => BiographyModel(
        firstAppearance: firstAppearance,
        fullName: fullName,
        placeOfBirth: placeOfBirth,
        publisher: publisher,
      );
}

extension ImagesMapper on Images {
  ImagesModel mapToImagesModel() => ImagesModel(
        sm: sm,
        lg: lg,
      );
}

extension PowerstatsMapper on Powerstats {
  PowerstatsModel mapToPowestatsModel() => PowerstatsModel(
        combat: combat,
        durability: durability,
        intelligence: intelligence,
        power: power,
        speed: speed,
        strength: strength,
      );
}

extension SuperHeroMapper on SuperHero {
  SuperHeroModel mapToSuperHeroModel() => SuperHeroModel(
        id: id,
        name: name,
        slug: slug,
        appearance: appearance?.mapToAppearanceModel(),
        biography: biography?.mapToBiographyModel(),
        images: images?.mapToImagesModel(),
        powerstats: powerstats?.mapToPowestatsModel(),
      );
}
