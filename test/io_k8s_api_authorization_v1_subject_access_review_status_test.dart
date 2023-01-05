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

// tests for IoK8sApiAuthorizationV1SubjectAccessReviewStatus
void main() {
  // final instance = IoK8sApiAuthorizationV1SubjectAccessReviewStatus();

  group('test IoK8sApiAuthorizationV1SubjectAccessReviewStatus', () {
    // Allowed is required. True if the action would be allowed, false otherwise.
    // bool allowed
    test('to test the property `allowed`', () async {
      // TODO
    });

    // Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true.
    // bool denied
    test('to test the property `denied`', () async {
      // TODO
    });

    // EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
    // String evaluationError
    test('to test the property `evaluationError`', () async {
      // TODO
    });

    // Reason is optional.  It indicates why a request was allowed or denied.
    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });


  });

}
