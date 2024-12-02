import 'dart:async';

import 'package:apitest/http/api_service.dart';
import 'package:apitest/model/user/user_data.dart';

class RemoteDatasource {
  Future<List<UserData>> getUser(String id) async {
    List<UserData> list = [];
    final response = await ApiService.create().getUsers(id);
    if (response.body != null) {
      for (var result in response.body!.resultData!) {
        list.add(UserData.fromJson(result));
      }
    }
    return list;
  }
}
