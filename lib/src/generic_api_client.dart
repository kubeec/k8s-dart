import 'dart:io';

import 'package:dio/dio.dart';
import 'package:k8s/src/api.dart';
import 'package:k8s/src/deserialize.dart';
import 'package:k8s/src/extensions/string_extensions.dart';

/// {@template generic_api_client}
/// Generic kubernetes objects api client
/// {@endtemplate}
class GenericApiClient {
  /// {@macro generic_api_client}
  const GenericApiClient(
    this.client,
  );

  /// client
  final ApiClient client;

  /// create
  Future<T> create<T>({
    required String group,
    required String version,
    required String plural,
    required Object spec,
    String? namespace,
    bool throwExceptions = false,
  }) async {
    final customObjectsApi = client.getCustomObjectsApi();
    Response<Object> apiResponse;

    if (namespace.isNullOrEmpty) {
      apiResponse = await customObjectsApi.createClusterCustomObject(
        group: group,
        version: version,
        plural: plural,
        body: spec,
      );
    } else {
      apiResponse = await customObjectsApi.createNamespacedCustomObject(
        group: group,
        version: version,
        namespace: namespace!,
        plural: plural,
        body: spec,
      );
    }

    if (throwExceptions &&
        apiResponse.statusCode != HttpStatus.ok &&
        apiResponse.statusCode != HttpStatus.created) {
      throw HttpException(apiResponse.statusMessage!);
    }

    final result = deserialize<T, T>(apiResponse.data, T.toString());
    return result;
  }
}
