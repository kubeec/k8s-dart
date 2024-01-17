//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';

class BearerAuthInterceptor extends Interceptor {
  final Map<String, String> tokens = {};

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
      final token = tokens['bearer'];
      if (token != null) {
        options.headers['Authorization'] = 'Bearer ${token}';
      }
    super.onRequest(options, handler);
  }
}
