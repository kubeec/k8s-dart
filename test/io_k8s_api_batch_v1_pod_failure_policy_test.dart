import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiBatchV1PodFailurePolicy
void main() {
  final instance = IoK8sApiBatchV1PodFailurePolicyBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiBatchV1PodFailurePolicy, () {
    // A list of pod failure policy rules. The rules are evaluated in order. Once a rule matches a Pod failure, the remaining of the rules are ignored. When no rule matches the Pod failure, the default handling applies - the counter of pod failures is incremented and it is checked against the backoffLimit. At most 20 elements are allowed.
    // BuiltList<IoK8sApiBatchV1PodFailurePolicyRule> rules
    test('to test the property `rules`', () async {
      // TODO
    });

  });
}
