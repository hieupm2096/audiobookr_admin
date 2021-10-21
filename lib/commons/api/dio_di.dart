import 'package:audiobookr_admin/commons/api/interceptor/app_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class DioDi {
  Dio get dio {
    final dio = Dio();
    dio.options.connectTimeout = const Duration(seconds: 5).inMilliseconds;
    dio.options.receiveTimeout = const Duration(seconds: 5).inMilliseconds;

    dio.interceptors.add(AppInterceptors(dio));
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
    ));

    return dio;
  }
}
