import 'package:json_annotation/json_annotation.dart';

part 'appearance_model.g.dart';

@JsonSerializable()
class AppearanceModel {
  final String? eyeColor;
  final String? hairColor;
  final String? height;
  final String? gender;
  final String? weight;

  AppearanceModel({
    this.eyeColor,
    this.hairColor,
    this.height,
    this.gender,
    this.weight,
  });

  factory AppearanceModel.fromJson(Map<String, dynamic> json) =>
      _$AppearanceModelFromJson(json);

  Map<String, dynamic> toJson() => _$AppearanceModelToJson(this);
}

enum Gender {
  female,
  male,
  unknown,
}
