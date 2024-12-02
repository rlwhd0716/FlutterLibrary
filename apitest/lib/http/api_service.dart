import 'dart:async';

import 'package:apitest/converter/response_converter.dart';
import 'package:apitest/http/network_interceptor.dart';
import 'package:apitest/model/base/base_response.dart';
import 'package:apitest/model/posts/posts.dart';
import 'package:chopper/chopper.dart';

part 'api_service.chopper.dart';

@ChopperApi()
abstract class ApiService extends ChopperService {
  @FactoryConverter(response: ResponseConverter.response)
  @FormUrlEncoded()
  @Post(path: '/ELSM_MS/user/overlap/id')
  Future<Response<BaseResponse>> getUsers(
    @Field("userId") String id,
  );

  @FactoryConverter(response: ResponseConverter.postsResponse)
  @Get(path: '/posts')
  Future<Response<List<Posts>>> getPosts();

  static ApiService create() {
    final client = ChopperClient(
      baseUrl: Uri.parse('https://eicp.koelsa.or.kr'),
      // baseUrl: Uri.parse('https://jsonplaceholder.typicode.com'),
      services: [
        _$ApiService(),
      ],
      interceptors: [
        NetworkInterceptor(),
      ],
      converter: const JsonConverter(),
    );
    return _$ApiService(client);
  }
}
