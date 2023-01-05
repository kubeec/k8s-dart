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

// tests for IoK8sApiAuthenticationV1TokenRequestSpec
void main() {
  // final instance = IoK8sApiAuthenticationV1TokenRequestSpec();

  group('test IoK8sApiAuthenticationV1TokenRequestSpec', () {
    // Audiences are the intendend audiences of the token. A recipient of a token must identify themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.
    // List<String> audiences (default value: const [])
    test('to test the property `audiences`', () async {
      // TODO
    });

    // IoK8sApiAuthenticationV1BoundObjectReference boundObjectRef
    test('to test the property `boundObjectRef`', () async {
      // TODO
    });

    // ExpirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.
    // int expirationSeconds
    test('to test the property `expirationSeconds`', () async {
      // TODO
    });


  });

}
