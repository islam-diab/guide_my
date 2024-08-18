import 'package:json_annotation/json_annotation.dart';
part 'categories.g.dart';

@JsonSerializable()
class Categories {
  
  final int categoryId;
  final String categoryName;

  Categories({
    required this.categoryId,
    required this.categoryName,
  });

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesToJson(this);
}
