// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_hero_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuperHeroModel _$SuperHeroModelFromJson(Map<String, dynamic> json) =>
    SuperHeroModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      appearance: json['appearance'] == null
          ? null
          : AppearanceModel.fromJson(
              json['appearance'] as Map<String, dynamic>),
      biography: json['biography'] == null
          ? null
          : BiographyModel.fromJson(json['biography'] as Map<String, dynamic>),
      images: json['images'] == null
          ? null
          : ImagesModel.fromJson(json['images'] as Map<String, dynamic>),
      powerstats: json['powerstats'] == null
          ? null
          : PowerstatsModel.fromJson(
              json['powerstats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SuperHeroModelToJson(SuperHeroModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'appearance': instance.appearance,
      'biography': instance.biography,
      'images': instance.images,
      'powerstats': instance.powerstats,
    };
