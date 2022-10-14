// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_hero.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuperHero _$SuperHeroFromJson(Map<String, dynamic> json) => SuperHero(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      appearance: json['appearance'] == null
          ? null
          : Appearance.fromJson(json['appearance'] as Map<String, dynamic>),
      biography: json['biography'] == null
          ? null
          : Biography.fromJson(json['biography'] as Map<String, dynamic>),
      images: json['images'] == null
          ? null
          : Images.fromJson(json['images'] as Map<String, dynamic>),
      powerstats: json['powerstats'] == null
          ? null
          : Powerstats.fromJson(json['powerstats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SuperHeroToJson(SuperHero instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'appearance': instance.appearance,
      'biography': instance.biography,
      'images': instance.images,
      'powerstats': instance.powerstats,
    };
