import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAuthorizationV1SubjectRulesReviewStatus
void main() {
  final instance = IoK8sApiAuthorizationV1SubjectRulesReviewStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAuthorizationV1SubjectRulesReviewStatus, () {
    // EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules and/or NonResourceRules may be incomplete.
    // String evaluationError
    test('to test the property `evaluationError`', () async {
      // TODO
    });

    // Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
    // bool incomplete
    test('to test the property `incomplete`', () async {
      // TODO
    });

    // NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
    // BuiltList<IoK8sApiAuthorizationV1NonResourceRule> nonResourceRules
    test('to test the property `nonResourceRules`', () async {
      // TODO
    });

    // ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
    // BuiltList<IoK8sApiAuthorizationV1ResourceRule> resourceRules
    test('to test the property `resourceRules`', () async {
      // TODO
    });

  });
}
