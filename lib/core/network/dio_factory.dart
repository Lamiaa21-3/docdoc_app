import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../helper/constants.dart';
import '../helper/shared_pref_helper.dart';

class DioFactory {
  /// private constructor do not allow to take instance
  DioFactory._();

  static Dio? dio;

  static Future<Dio> getDio() async {
    Duration timeOut = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
     await addDioHeaders();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }
  static Future<void> addDioHeaders() async {
    final token = await SharedPrefHelper.getString(SharedPrefKeys.userToken);
    dio?.options.headers = {
      'Accept': 'application/json',
      // if (token != null && token.isNotEmpty)
      'Authorization':'Bearer $token',

      //'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzU1NTkyODIxLCJleHAiOjE3NTU2NzkyMjEsIm5iZiI6MTc1NTU5MjgyMSwianRpIjoiYk9SUlNSV3BJZ2ZvcHFmUiIsInN1YiI6IjQ3NjEiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.TeXDfpO4QNf7bjWna-IIGYZsFezbGcp4M-8-kVGro_w',
    };
  }
  static void setTokenAfterLogin(String token) {
    dio?.options.headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
  }

  static void setTokenIntoHeaderAfterLogin(String token) {
    dio?.options.headers = {
      'Authorization': 'Bearer $token',
    };
  }
  //وظيفته يطبع كل تفاصيل الطلبات والردود بشكل منظم وواضح في الـ console.
  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
