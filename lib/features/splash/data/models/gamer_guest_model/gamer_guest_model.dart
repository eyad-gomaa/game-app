import 'data.dart';

class GamerGuestRegisterModel {
  bool? success;
  int? statusCode;
  String? message;
  GamerGuestData? data;

  GamerGuestRegisterModel(
      {this.success, this.statusCode, this.message, this.data});

  factory GamerGuestRegisterModel.fromJson(Map<String, dynamic> json) {
    return GamerGuestRegisterModel(
      success: json['success'] as bool?,
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GamerGuestData.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'success': success,
        'status_code': statusCode,
        'message': message,
        'data': data?.toJson(),
      };
}
