import 'package:dio/dio.dart';
// this package is used for getting data from an api.
class DioHelper // we create an object from Dio then give it the base url of our
// api then we do make our method that will handle the response using( dio.get ).
{
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
      receiveDataWhenStatusError: true,
      baseUrl: 'http://newsapi.org/',
    ));
  }

  static Future<Response> getData(
      String url, Map<String, dynamic> query) async {
    return await dio.get(url, queryParameters: query);
  }
}
