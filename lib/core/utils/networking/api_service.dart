import 'package:dio/dio.dart';
import 'package:zone_game_app/core/utils/networking/api_constants.dart';

class DioHelper {
  static Dio dio = Dio(BaseOptions(headers: ApiConstants.headers));
  // +++++++++++++++++ Get Data Method +++++++++++++++++
  Future<Response> getData({
    required String endpoint,
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
  }) async {
    dio.options.headers = headers ?? ApiConstants.headers;
    return await dio.get("${ApiConstants.baseUrl}$endpoint",
        queryParameters: query);
  }
  // +++++++++++++++++ Post Data Method +++++++++++++++++

  Future<Response> postData({
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
    required String endpoint,
    Map<String, dynamic>? headers,
  }) async {
    dio.options.headers = headers ?? ApiConstants.headers;
    return await dio.post("${ApiConstants.baseUrl}$endpoint",
        data: data, queryParameters: query);
  }

  // +++++++++++++++++ Post Data with image Method +++++++++++++++++
  // static Future<Response> postDataWithImage({
  //   required Map<String, dynamic> data,
  //   required XFile? image,
  //   required String endpoint,
  //   Map<String, dynamic>? headers,
  // }) async {
  //   dio.options.headers = headers ?? ApiConstants.headers;
  //   //========> convert model to form data
  //   FormData formData = FormData.fromMap(data);
  //   //========> add image to form data if exist
  //   if (image != null) {
  //     File imageFile = File(image.path);
  //     formData.files.add(MapEntry(
  //       'image',
  //       await MultipartFile.fromFile(imageFile.path),
  //     ));
  //   }
  //   return await dio.post("${ApiConstants.baseUrl}$endpoint", data: formData);
  // }

  // =============== Delete Data Method ==============
  Future<Response> deleteData(
      {required String endpoint,
      Map<String, dynamic>? query,
      Map<String, dynamic>? headers}) async {
    dio.options.headers = headers ?? ApiConstants.headers;

    return await dio.delete("${ApiConstants.baseUrl}$endpoint",
        queryParameters: query);
  }
}
