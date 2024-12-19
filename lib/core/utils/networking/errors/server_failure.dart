import 'package:dio/dio.dart';
import 'package:zone_game_app/core/utils/networking/errors/failure.dart';

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  // Server Failure From Dio Error
  factory ServerFailure.fromDioError({required DioException dioException}) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'انتهت مهلة الاتصال بالخادم');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'انتهت مهلة إرسال الطلب للخادم');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'انتهت مهلة استقبال الرد من الخادم');
      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: 'شهادة اتصال غير صالحة مع الخادم');
      case DioExceptionType.badResponse:
        // Failure from response status code
        return ServerFailure.fromResponse(
          statusCode: dioException.response!.statusCode!,
          response: dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'تم إلغاء الطلب للخادم');
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: 'لا يوجد اتصال بالإنترنت');
      case DioExceptionType.unknown:
        return ServerFailure(
            errMessage: 'عذرًا، حدث خطأ ما. يرجى المحاولة مرة أخرى');
    }
  }

  factory ServerFailure.fromResponse(
      {required int statusCode, required dynamic response}) {
    if (statusCode == 404) {
      return ServerFailure(errMessage: 'الطلب غير موجود، يرجى المحاولة لاحقًا');
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: 'هناك مشكلة في الخادم، يرجى المحاولة لاحقًا');
    } else if (statusCode == 400 ||
        statusCode == 401 ||
        statusCode == 403 ||
        statusCode == 422) {
      return ServerFailure(errMessage: response["message"]);
    } else {
      return ServerFailure(
          errMessage: 'عذرًا، حدث خطأ ما. يرجى المحاولة لاحقًا');
    }
  }
}
