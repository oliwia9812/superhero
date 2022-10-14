import 'package:json_annotation/json_annotation.dart';

part 'images.g.dart';

@JsonSerializable()
class Images {
  final String? xs;
  final String? sm;
  final String? md;
  final String? lg;

  Images({
    this.xs,
    this.sm,
    this.md,
    this.lg,
  });

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}
