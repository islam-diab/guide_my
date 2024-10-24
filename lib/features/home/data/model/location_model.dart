import 'package:hive_flutter/hive_flutter.dart';

part 'location_model.g.dart';

@HiveType(typeId: 2)
class LocationModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String phone;
  @HiveField(3)
  final String category;
  @HiveField(4)
  final String image;
  @HiveField(5)
  final String description;
  @HiveField(6)
  final String location;
  @HiveField(7)
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
