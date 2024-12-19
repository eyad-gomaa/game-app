
import 'package:zone_game_app/features/splash/data/models/get_diamond_Model/data.dart';

class GetDiamondModel {
  bool? success;
  int? statusCode;
  String? message;
  GetDiamondData? data;

  GetDiamondModel({this.success, this.statusCode, this.message, this.data});

  factory GetDiamondModel.fromJson(Map<String, dynamic> json) {
    return GetDiamondModel(
      success: json['success'] as bool?,
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GetDiamondData.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'success': success,
        'status_code': statusCode,
        'message': message,
        'data': data?.toJson(),
      };
}
