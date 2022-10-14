// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appearance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Appearance _$AppearanceFromJson(Map<String, dynamic> json) => Appearance(
      eyeColor: json['eyeColor'] as String?,
      hairColor: json['hairColor'] as String?,
      height:
          (json['height'] as List<dynamic>?)?.map((e) => e as String).toList(),
      gender: json['gender'] as String?,
      race: json['race'] as String?,
      weight:
          (json['weight'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AppearanceToJson(Appearance instance) =>
    <String, dynamic>{
      'eyeColor': instance.eyeColor,
      'hairColor': instance.hairColor,
      'height': instance.height,
      'gender': instance.gender,
      'race': instance.race,
      'weight': instance.weight,
    };
