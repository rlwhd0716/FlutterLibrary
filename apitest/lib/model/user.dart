import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(checked: true, createFactory: true)
class User {
  @JsonKey(name: 'userRegNo')
  String? regNo;

  @JsonKey(name: 'userTelno')
  String? telNo;

  @JsonKey(name: 'userNm')
  String? name;

  @JsonKey(name: 'fcmTkn')
  String? fcmToken;

  User({
    this.regNo,
    this.telNo,
    this.name,
    this.fcmToken,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
