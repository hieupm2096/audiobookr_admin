import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  T? data;
  String? message;
}

// For making subclass alias
mixin EmptyMixin {}
