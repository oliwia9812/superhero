// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biography_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BiographyModel _$BiographyModelFromJson(Map<String, dynamic> json) =>
    BiographyModel(
      firstAppearance: json['firstAppearance'] as String?,
      fullName: json['fullName'] as String?,
      placeOfBirth: json['placeOfBirth'] as String?,
      publisher: json['publisher'] as String?,
    );

Map<String, dynamic> _$BiographyModelToJson(BiographyModel instance) =>
    <String, dynamic>{
      'firstAppearance': instance.firstAppearance,
      'fullName': instance.fullName,
      'placeOfBirth': instance.placeOfBirth,
      'publisher': instance.publisher,
    };
