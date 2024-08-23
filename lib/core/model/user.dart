import 'package:firebase_auth/firebase_auth.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class UserModel {
  final String id;
  final String? name;
  final String? email;
  final String? photoURL;
  final bool isOwner;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.photoURL,
    this.isOwner = false,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  // Factory method to create a UserModel from Firebase User object
  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      id: user.uid,
      name: user.displayName,
      email: user.email,
      photoURL: user.photoURL,
    );
  }
}
