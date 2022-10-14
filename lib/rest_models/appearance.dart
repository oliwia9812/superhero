import 'package:json_annotation/json_annotation.dart';

part 'appearance.g.dart';

@JsonSerializable()
class Appearance {
  final String? eyeColor;
  final String? hairColor;
  final List<String>? height;
  final String? gender;
  final String? race;
  final List<String>? weight;

  Appearance({
    this.eyeColor,
    this.hairColor,
    this.height,
    this.gender,
    this.race,
    this.weight,
  });

  factory Appearance.fromJson(Map<String, dynamic> json) =>
      _$AppearanceFromJson(json);

  Map<String, dynamic> toJson() => _$AppearanceToJson(this);
}
