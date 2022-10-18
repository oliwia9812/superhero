import 'package:json_annotation/json_annotation.dart';

part 'search_request.g.dart';

@JsonSerializable()
class SearchRequest {
  String hero;

  SearchRequest({
    required this.hero,
  });

  Map<String, dynamic> toJson() => _$SearchRequestToJson(this);
}
