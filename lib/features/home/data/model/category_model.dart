class CategoryModel {
  final int id;
  final String group;
  final String name;
  final String image;

  CategoryModel({required this.id, required this.group, required this.name, required this.image});

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
