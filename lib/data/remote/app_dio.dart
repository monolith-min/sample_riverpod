
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ua_client_hints/ua_client_hints.dart';

final dioProvider = Provider((_) => AppDio.getInstance());

class AppDio with DioMixin implements Dio {
  AppDio._([BaseOptions? options]) {
    options = BaseOptions(
        baseUrl: "",
      contentType: 'application/json',
      connectTimeout: 30000,
      sendTimeout: 30000,
      receiveTimeout: 30000,
    );

    this.options = options;
    interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
        options.headers.addAll(await userAgentClientHintsHeader());
        handler.next(options);
    }));

    interceptors.add(LogInterceptor(responseBody: true, requestBody: true));

    httpClientAdapter = DefaultHttpClientAdapter();
  }

  static Dio getInstance() => AppDio._();
}