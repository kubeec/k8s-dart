import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAuthorizationV1SubjectAccessReviewStatus
void main() {
  final instance = IoK8sApiAuthorizationV1SubjectAccessReviewStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAuthorizationV1SubjectAccessReviewStatus, () {
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
