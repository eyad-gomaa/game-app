import 'data.dart';

class GetHomeModel {
  bool? success;
  int? statusCode;
  String? message;
  HomeData? data;

  GetHomeModel({this.success, this.statusCode, this.message, this.data});

  factory GetHomeModel.fromJson(Map<String, dynamic> json) => GetHomeModel(
        success: json['success'] as bool?,
        statusCode: json['status_code'] as int?,
        message: json['message'] as String?,
        data: json['data'] == null
            ? null
            : HomeData.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'success': success,
        'status_code': statusCode,
        'message': message,
        'data': data?.toJson(),
      };
}
