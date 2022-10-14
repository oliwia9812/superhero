// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'powerstats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Powerstats _$PowerstatsFromJson(Map<String, dynamic> json) => Powerstats(
      combat: json['combat'] as int?,
      durability: json['durability'] as int?,
      intelligence: json['intelligence'] as int?,
      power: json['power'] as int?,
      speed: json['speed'] as int?,
      strength: json['strength'] as int?,
    );

Map<String, dynamic> _$PowerstatsToJson(Powerstats instance) =>
    <String, dynamic>{
      'combat': instance.combat,
      'durability': instance.durability,
      'intelligence': instance.intelligence,
      'power': instance.power,
      'speed': instance.speed,
      'strength': instance.strength,
    };
