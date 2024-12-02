// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ApiService extends ApiService {
  _$ApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ApiService;

  @override
  Future<Response<BaseResponse>> getUsers(String id) {
    final Uri $url = Uri.parse('/ELSM_MS/user/overlap/id');
    final Map<String, String> $headers = {
      'content-type': 'application/x-www-form-urlencoded',
    };
    final $body = <String, String>{'userId': id.toString()};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<BaseResponse, BaseResponse>(
      $request,
      responseConverter: ResponseConverter.response,
    );
  }

  @override
  Future<Response<List<Posts>>> getPosts() {
    final Uri $url = Uri.parse('/posts');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Posts>, Posts>(
      $request,
      responseConverter: ResponseConverter.postsResponse,
    );
  }
}
