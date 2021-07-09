// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    uid: json['uid'] as String,
    imageUrl: json['imageUrl'] as String,
    userName: json['userName'] as String,
    gender: json['gender'] as String,
    age: json['age'] as String,
    stars: json['stars'] as int,
    accuracy: (json['accuracy'] as num)?.toDouble(),
    time: json['time'] as int,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'uid': instance.uid,
      'imageUrl': instance.imageUrl,
      'userName': instance.userName,
      'gender': instance.gender,
      'age': instance.age,
      'stars': instance.stars,
      'accuracy': instance.accuracy,
      'time': instance.time,
    };
