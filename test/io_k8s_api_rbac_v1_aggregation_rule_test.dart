import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiRbacV1AggregationRule
void main() {
  final instance = IoK8sApiRbacV1AggregationRuleBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiRbacV1AggregationRule, () {
    // ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
    // BuiltList<IoK8sApimachineryPkgApisMetaV1LabelSelector> clusterRoleSelectors
    test('to test the property `clusterRoleSelectors`', () async {
      // TODO
    });

  });
}
