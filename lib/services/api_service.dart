import 'package:dio/dio.dart';

import 'logging_interceptor.dart';

class ApiService {
  final Dio _dio;
  final String apiKey = "9140fc92a1cc4e9384d163110f3387cf";

  ApiService() : _dio = Dio(BaseOptions(
          baseUrl: 'https://newsapi.org/v2',
        )) {
    _dio.options.headers = {
      'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json'
    };
    _dio.interceptors.add(LoggingInterceptor());
  }

  Future<dynamic> fetchAllNews(Map<String, dynamic> queryParams) async {
    try {

      final response = await _dio.get(
        '/top-headlines',
        queryParameters: queryParams,
      );
      return response.data;
    } on DioError catch (e) {
      throw e;
    }
  }
}
