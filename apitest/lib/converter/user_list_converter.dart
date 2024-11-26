import 'dart:async';
import 'dart:convert';

import 'package:apitest/model/posts/posts.dart';
import 'package:apitest/model/user/user_data.dart';
import 'package:chopper/chopper.dart';

class ResponseConverter {
  static FutureOr<Response<List<UserData>>> usersResponse(
    Response<dynamic> response,
  ) async {
    List<UserData> list = [];
    final body = response.body;
    final bodyDecode = json.decode(body as String) as List<dynamic>;
    for (var b in bodyDecode) {
      list.add(UserData.fromJson(b));
    }

    return response.copyWith(body: list);
  }

  static FutureOr<Response<List<Posts>>> postsResponse(
    Response<dynamic> response,
  ) async {
    List<Posts> list = [];
    final body = response.body;
    final bodyDecode = json.decode(body as String) as List<dynamic>;
    for (var b in bodyDecode) {
      list.add(Posts.fromJson(b));
    }

    return response.copyWith(body: list);
  }
}
