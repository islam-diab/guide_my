// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      locationId: (json['locationId'] as num).toInt(),
      name: json['name'] as String,
      categoryId: (json['categoryId'] as num).toInt(),
      contactInfo: json['contactInfo'] as String,
      rating: json['rating'] as String,
      coordinate: json['coordinate'] as String,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'categoryId': instance.categoryId,
      'locationId': instance.locationId,
      'name': instance.name,
      'contactInfo': instance.contactInfo,
      'rating': instance.rating,
      'coordinate': instance.coordinate,
    };
