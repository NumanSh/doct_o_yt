import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  // DioFactory._() this is a private constructor and can't be called and its useful bc we can't create an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeout = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();

//the code below is used to set the timeout for the request the '..options' is used to set the timeout.
      dio!
        ..options.receiveTimeout = timeout
        ..options.connectTimeout = timeout;
      addDioInterceptors();
      return dio!;
    } else {
      return dio!;
    }
  }

// this function is used to add the interceptors to the dio, i used the PrettyDioLogger package to add the interceptors,you can see the package to copy the func
  static void addDioInterceptors() {
    dio?.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
    ));
  }
}
