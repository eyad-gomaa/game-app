import 'data.dart';

class GetGoldModel {
  bool? success;
  int? statusCode;
  String? message;
  GetGoldData? data;

  GetGoldModel({this.success, this.statusCode, this.message, this.data});

  factory GetGoldModel.fromJson(Map<String, dynamic> json) => GetGoldModel(
        success: json['success'] as bool?,
        statusCode: json['status_code'] as int?,
        message: json['message'] as String?,
        data: json['data'] == null
            ? null
            : GetGoldData.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'success': success,
        'status_code': statusCode,
        'message': message,
        'data': data?.toJson(),
      };
}
