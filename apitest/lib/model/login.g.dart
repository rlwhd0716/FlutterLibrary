// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login _$LoginFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Login',
      json,
      ($checkedConvert) {
        final val = Login(
          telNo: $checkedConvert('userTelno', (v) => v as String?),
          fcmToken: $checkedConvert('fcmTkn', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'telNo': 'userTelno', 'fcmToken': 'fcmTkn'},
    );

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'userTelno': instance.telNo,
      'fcmTkn': instance.fcmToken,
    };
