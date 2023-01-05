//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:k8s/api.dart';
import 'package:test/test.dart';

// tests for IoK8sApiCoreV1ServiceAccountTokenProjection
void main() {
  // final instance = IoK8sApiCoreV1ServiceAccountTokenProjection();

  group('test IoK8sApiCoreV1ServiceAccountTokenProjection', () {
    // audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver.
    // String audience
    test('to test the property `audience`', () async {
      // TODO
    });

    // expirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes.
    // int expirationSeconds
    test('to test the property `expirationSeconds`', () async {
      // TODO
    });

    // path is the path relative to the mount point of the file to project the token into.
    // String path
    test('to test the property `path`', () async {
      // TODO
    });


  });

}
