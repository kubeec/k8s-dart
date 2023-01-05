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

// tests for IoK8sApiAuthenticationV1TokenReviewStatus
void main() {
  // final instance = IoK8sApiAuthenticationV1TokenReviewStatus();

  group('test IoK8sApiAuthenticationV1TokenReviewStatus', () {
    // Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is \"true\", the token is valid against the audience of the Kubernetes API server.
    // List<String> audiences (default value: const [])
    test('to test the property `audiences`', () async {
      // TODO
    });

    // Authenticated indicates that the token was associated with a known user.
    // bool authenticated
    test('to test the property `authenticated`', () async {
      // TODO
    });

    // Error indicates that the token couldn't be checked
    // String error
    test('to test the property `error`', () async {
      // TODO
    });

    // IoK8sApiAuthenticationV1UserInfo user
    test('to test the property `user`', () async {
      // TODO
    });


  });

}
