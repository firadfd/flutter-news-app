import 'package:dio/dio.dart';

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print("REQUEST[${options.method}] => PATH: ${options.path}");
    print("Headers: ${options.headers}");
    print("Query Parameters: ${options.queryParameters}");
    print("Body: ${options.data}");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print("RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}");
    print("Data: ${response.data}");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print("ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}");
    print("Message: ${err.message}");
    print("Error Data: ${err.response?.data}");
    super.onError(err, handler);
  }
}
