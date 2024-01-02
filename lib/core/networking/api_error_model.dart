import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String message;
  final int? code;
  ApiErrorModel({required this.message, this.code});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  @override
  String toString() => 'ApiErrorModel(message: $message, code: $code)';
}

ApiErrorModel fromJson(Map<String, dynamic> json) =>
    ApiErrorModel.fromJson(json);

Map<String, dynamic> toJson(ApiErrorModel instance) => instance.toJson();
