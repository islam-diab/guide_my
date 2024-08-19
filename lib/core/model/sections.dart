import 'package:json_annotation/json_annotation.dart';
part 'sections.g.dart';

@JsonSerializable()
class Sections {
  final int sectionId;
  final int sectionName;

  Sections({
    required this.sectionId,
    required this.sectionName,
  });

  factory Sections.fromJson(Map<String, dynamic> json) =>
      _$SectionsFromJson(json);
  Map<String, dynamic> toJson() => _$SectionsToJson(this);
}
