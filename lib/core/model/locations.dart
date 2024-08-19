import 'package:json_annotation/json_annotation.dart';
part 'locations.g.dart';

@JsonSerializable()
class Location {
  final int setionsId;
  final int locationId;
  final String name;
  final String contactInfo;
  final String rating;
  final String coordinate;

  Location({
    required this.locationId,
    required this.name,
    required this.setionsId,
    required this.contactInfo,
    required this.rating,
    required this.coordinate,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
