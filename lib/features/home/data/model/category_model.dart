import 'package:hive/hive.dart';

part 'category_model.g.dart';

@HiveType(typeId: 1)
class CategoryModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String group;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final String image;

  CategoryModel(
      {required this.id,
      required this.group,
      required this.name,
      required this.image});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      group: json['group'],
      name: json['name'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['group'] = group;
    data['name'] = name;
    data['image'] = image;

    return data;
  }
}
