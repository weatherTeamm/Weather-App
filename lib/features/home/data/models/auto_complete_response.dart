import 'package:json_annotation/json_annotation.dart';

part 'auto_complete_response.g.dart';

@JsonSerializable()
class AutocompleteResponse {
  final String name;
  final String region;
  final String country;
  final double lat;
  final double lon;

  AutocompleteResponse({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
  });

  factory AutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AutocompleteResponseToJson(this);
}
