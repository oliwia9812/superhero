import 'package:super_hero/domain/models/appearance_model.dart';
import 'package:super_hero/domain/models/biography_model.dart';
import 'package:super_hero/domain/models/images_model.dart';
import 'package:super_hero/domain/models/powerstats_model.dart';
import 'package:super_hero/rest_models/appearance.dart';
import 'package:super_hero/rest_models/biography.dart';
import 'package:super_hero/rest_models/images.dart';
import 'package:super_hero/rest_models/powerstats.dart';
import 'package:json_annotation/json_annotation.dart';

part 'super_hero_model.g.dart';

@JsonSerializable()
class SuperHeroModel {
  final int? id;
  final String? name;
  final String? slug;
  final AppearanceModel? appearance;
  final BiographyModel? biography;
  final ImagesModel? images;
  final PowerstatsModel? powerstats;

  SuperHeroModel({
    this.id,
    this.name,
    this.slug,
    this.appearance,
    this.biography,
    this.images,
    this.powerstats,
  });

  factory SuperHeroModel.fromJson(Map<String, dynamic> json) =>
      _$SuperHeroModelFromJson(json);

  Map<String, dynamic> toJson() => _$SuperHeroModelToJson(this);
}
