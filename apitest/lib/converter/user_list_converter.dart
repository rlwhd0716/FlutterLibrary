import 'dart:async';
import 'dart:convert';

import 'package:apitest/model/user.dart';
import 'package:chopper/chopper.dart';

class UserListConverter {
  static FutureOr<Response<List<User>>> response(
    Response<dynamic> response,
  ) async {
    List<User> list = [];
    final body = response.body;
    final bodyDecode = json.decode(body as String) as List<dynamic>;
    for (var b in bodyDecode) {
      list.add(User.fromJson(b));
    }

    return response.copyWith(body: list);
  }
}
