import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

@freezed
class BaseResponse with _$BaseResponse {
  factory BaseResponse({
    required String resultCode,
    required String resultMsg,
    required int resultSize,
    required int totalSize,
    required List<dynamic>? resultData,
  }) = _BaseResponse;

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);
}
