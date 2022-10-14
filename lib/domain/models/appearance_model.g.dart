// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appearance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppearanceModel _$AppearanceModelFromJson(Map<String, dynamic> json) =>
    AppearanceModel(
      eyeColor: json['eyeColor'] as String?,
      hairColor: json['hairColor'] as String?,
      height: json['height'] as String?,
      gender: json['gender'] as String?,
      weight: json['weight'] as String?,
    );

Map<String, dynamic> _$AppearanceModelToJson(AppearanceModel instance) =>
    <String, dynamic>{
      'eyeColor': instance.eyeColor,
      'hairColor': instance.hairColor,
      'height': instance.height,
      'gender': instance.gender,
      'weight': instance.weight,
    };
