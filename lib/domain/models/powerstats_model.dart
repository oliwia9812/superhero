import 'package:json_annotation/json_annotation.dart';

part 'powerstats_model.g.dart';

@JsonSerializable()
class PowerstatsModel {
  final int? combat;
  final int? durability;
  final int? intelligence;
  final int? power;
  final int? speed;
  final int? strength;

  PowerstatsModel({
    this.combat,
    this.durability,
    this.intelligence,
    this.power,
    this.speed,
    this.strength,
  });

  factory PowerstatsModel.fromJson(Map<String, dynamic> json) =>
      _$PowerstatsModelFromJson(json);

  Map<String, dynamic> toJson() => _$PowerstatsModelToJson(this);
}
