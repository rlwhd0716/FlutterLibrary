import 'package:freezed_annotation/freezed_annotation.dart';

import '../address/address.dart';
import '../company/company.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  factory UserData({
    required int? id,
    required String? name,
    required String? username,
    required String? email,
    required Address? address,
    required String? phone,
    required String? website,
    required Company? company,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
