import 'dart:async';

import 'package:chopper/chopper.dart';

class NetworkInterceptor implements Interceptor {
  NetworkInterceptor();

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(
      Chain<BodyType> chain) async {
    final updatedParameters =
        Map<String, dynamic>.from(chain.request.parameters);
    updatedParameters['api_key'] = '';
    updatedParameters['language'] = 'ko-KR';

    final updatedRequest =
        chain.request.copyWith(parameters: updatedParameters);
    final response = await chain.proceed(updatedRequest);

    return response;
  }
}
