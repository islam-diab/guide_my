  import 'package:json_annotation/json_annotation.dart';

  part 'user.g.dart';

@JsonSerializable()
class User {
 final int userId;
final  String name;

  User({
    required this.userId,
    required this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
      
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
