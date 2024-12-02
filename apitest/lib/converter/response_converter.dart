import 'dart:async';
import 'dart:convert';

import 'package:apitest/model/base/base_response.dart';
import 'package:apitest/model/posts/posts.dart';
import 'package:apitest/model/user/user_data.dart';
import 'package:chopper/chopper.dart';

class ResponseConverter {
  // return      // 함수명                      // 파라미터
  static FutureOr<Response<BaseResponse>> response(
    Response<dynamic> response,
  ) async {
    final body = response.body;
    print("body - ${body}");
    final bodyDecode = json.decode(body.toString());
    print("body - ${bodyDecode}");

    final result = BaseResponse.fromJson(bodyDecode);
    print(result);

    return response.copyWith(body: result);
  }

  static FutureOr<Response<List<UserData>>> usersResponse(
    Response<dynamic> response,
  ) async {
    List<UserData> list = [];
    final body = response.body;
    print(body);
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
