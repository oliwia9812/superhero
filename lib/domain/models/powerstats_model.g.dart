// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'powerstats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PowerstatsModel _$PowerstatsModelFromJson(Map<String, dynamic> json) =>
    PowerstatsModel(
      combat: json['combat'] as int?,
      durability: json['durability'] as int?,
      intelligence: json['intelligence'] as int?,
      power: json['power'] as int?,
      speed: json['speed'] as int?,
      strength: json['strength'] as int?,
    );

Map<String, dynamic> _$PowerstatsModelToJson(PowerstatsModel instance) =>
    <String, dynamic>{
      'combat': instance.combat,
      'durability': instance.durability,
      'intelligence': instance.intelligence,
      'power': instance.power,
      'speed': instance.speed,
      'strength': instance.strength,
    };
