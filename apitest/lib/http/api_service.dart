import 'dart:async';

import 'package:apitest/converter/user_list_converter.dart';
import 'package:apitest/http/network_interceptor.dart';
import 'package:apitest/model/user.dart';
import 'package:chopper/chopper.dart';

part 'api_service.chopper.dart';

@ChopperApi()
abstract class ApiService extends ChopperService {
  @FactoryConverter(response: UserListConverter.response)
  @Get(path: '/users')
  Future<Response<List<User>>> getUsers();

  static ApiService create() {
    final client = ChopperClient(
      baseUrl: Uri.parse('https://jsonplaceholder.typicode.com'),
      services: [
        _$ApiService(),
      ],
      interceptors: [NetworkInterceptor()],
      converter: const JsonConverter(),
    );
    return _$ApiService(client);
  }
}
