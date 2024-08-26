import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive/hive.dart';

part 'app_user.g.dart';

@HiveType(typeId: 0)
class AppUser {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final String? email;
  @HiveField(3)
  final String? photoURL;

  AppUser({
    required this.id,
    required this.name,
    required this.email,
    required this.photoURL,
  });

  factory AppUser.fromJson(User user) {
    return AppUser(
      id: user.uid,
      name: user.displayName,
      email: user.email,
      photoURL: user.photoURL,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uid'] = id;
    data['name'] = name;
    data['email'] = email;
    data['photoURL'] = photoURL;

    return data;
  }
}
