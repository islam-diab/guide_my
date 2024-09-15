class LocationModel {
  final String id;
  final String name;
  final String phone;
  final String category;
  final String image;
  final String description;
  final String location;
  final String locationInGoogleMaps;

  LocationModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.category,
    required this.image,
    required this.description,
    required this.location,
    required this.locationInGoogleMaps,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
      category: json['category'],
      image: json['image'],
      description: json['description'],
      location: json['location'],
      locationInGoogleMaps: json['locationInGoogleMaps'],
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
    data['locationInGoogleMaps'] = locationInGoogleMaps;
    return data;
  }
}
