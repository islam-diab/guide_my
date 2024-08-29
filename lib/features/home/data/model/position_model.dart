class PositionModel {
  final int id;
  final String name;
  final String phone;
  final String category;
  final String image;
  final String description;
  final String location;

  PositionModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.category,
    required this.image,
    required this.description,
    required this.location,
  });

  factory PositionModel.fromJson(Map<String, dynamic> json) {
    return PositionModel(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
      category: json['category'],
      image: json['image'],
      description: json['description'],
      location: json['location'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;  
    data['name'] = name;
    data['phone'] = phone;
    data['category'] = category;
    data['image'] = image;
    data['description'] = description;
    data['location'] = location;
    return data;
  }
}
