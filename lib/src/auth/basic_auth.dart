//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:convert';

import 'package:dio/dio.dart';

class BasicAuthInfo {
  final String username;
  final String password;

  const BasicAuthInfo(this.username, this.password);
}

class BasicAuthInterceptor extends Interceptor {
  final Map<String, BasicAuthInfo> authInfo = {};

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
      final basicAuthInfo = authInfo['basic'];
      if (basicAuthInfo != null) {
        final basicAuth = 'Basic ${base64Encode(utf8.encode('${basicAuthInfo.username}:${basicAuthInfo.password}'))}';
        options.headers['Authorization'] = basicAuth;
      }
    super.onRequest(options, handler);
  }
}
