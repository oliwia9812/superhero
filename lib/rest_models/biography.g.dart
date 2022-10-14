// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biography.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Biography _$BiographyFromJson(Map<String, dynamic> json) => Biography(
      alignment: json['alignment'] as String?,
      aliases:
          (json['aliases'] as List<dynamic>?)?.map((e) => e as String).toList(),
      alterEgos: json['alterEgos'] as String?,
      firstAppearance: json['firstAppearance'] as String?,
      fullName: json['fullName'] as String?,
      placeOfBirth: json['placeOfBirth'] as String?,
      publisher: json['publisher'] as String?,
    );

Map<String, dynamic> _$BiographyToJson(Biography instance) => <String, dynamic>{
      'aliases': instance.aliases,
      'alignment': instance.alignment,
      'alterEgos': instance.alterEgos,
      'firstAppearance': instance.firstAppearance,
      'fullName': instance.fullName,
      'placeOfBirth': instance.placeOfBirth,
      'publisher': instance.publisher,
    };
