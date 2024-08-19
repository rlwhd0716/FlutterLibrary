// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => $checkedCreate(
      'User',
      json,
      ($checkedConvert) {
        final val = User(
          regNo: $checkedConvert('userRegNo', (v) => v as String?),
          telNo: $checkedConvert('userTelno', (v) => v as String?),
          name: $checkedConvert('userNm', (v) => v as String?),
          fcmToken: $checkedConvert('fcmTkn', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'regNo': 'userRegNo',
        'telNo': 'userTelno',
        'name': 'userNm',
        'fcmToken': 'fcmTkn'
      },
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'userRegNo': instance.regNo,
      'userTelno': instance.telNo,
      'userNm': instance.name,
      'fcmTkn': instance.fcmToken,
    };
