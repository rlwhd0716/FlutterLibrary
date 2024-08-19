
import 'package:json_annotation/json_annotation.dart';

part 'login.g.dart';

@JsonSerializable(checked: true, createFactory: true)
class Login {
  @JsonKey(name: 'userTelno')
  String? telNo;
  @JsonKey(name: 'fcmTkn')
  String? fcmToken;

  Login({this.telNo, this.fcmToken});

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
  Map<String, dynamic> toJson() => _$LoginToJson(this);
}
