import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User({
    this.uid,
    this.imageUrl,
    this.userName,
    this.gender,
    this.age,
    this.stars,
    this.accuracy,
    this.time,
  });

  String uid;
  String imageUrl;
  String userName;
  String gender;
  String age;
  int stars;
  double accuracy;
  int time;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
