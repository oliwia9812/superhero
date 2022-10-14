import 'package:json_annotation/json_annotation.dart';

part 'biography_model.g.dart';

@JsonSerializable()
class BiographyModel {
  final String? firstAppearance;
  final String? fullName;
  final String? placeOfBirth;
  final String? publisher;

  BiographyModel({
    this.firstAppearance,
    this.fullName,
    this.placeOfBirth,
    this.publisher,
  });

  factory BiographyModel.fromJson(Map<String, dynamic> json) =>
      _$BiographyModelFromJson(json);

  Map<String, dynamic> toJson() => _$BiographyModelToJson(this);
}
