import 'package:json_annotation/json_annotation.dart';

part 'biography.g.dart';

@JsonSerializable()
class Biography {
  final List<String>? aliases;
  final String? alignment;
  final String? alterEgos;
  final String? firstAppearance;
  final String? fullName;
  final String? placeOfBirth;
  final String? publisher;

  Biography({
    this.alignment,
    this.aliases,
    this.alterEgos,
    this.firstAppearance,
    this.fullName,
    this.placeOfBirth,
    this.publisher,
  });

  factory Biography.fromJson(Map<String, dynamic> json) =>
      _$BiographyFromJson(json);

  Map<String, dynamic> toJson() => _$BiographyToJson(this);
}
