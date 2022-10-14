import 'package:json_annotation/json_annotation.dart';

part 'powerstats.g.dart';

@JsonSerializable()
class Powerstats {
  final int? combat;
  final int? durability;
  final int? intelligence;
  final int? power;
  final int? speed;
  final int? strength;

  Powerstats({
    this.combat,
    this.durability,
    this.intelligence,
    this.power,
    this.speed,
    this.strength,
  });

  factory Powerstats.fromJson(Map<String, dynamic> json) =>
      _$PowerstatsFromJson(json);

  Map<String, dynamic> toJson() => _$PowerstatsToJson(this);
}
