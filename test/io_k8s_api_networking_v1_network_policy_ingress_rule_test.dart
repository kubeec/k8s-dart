import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiNetworkingV1NetworkPolicyIngressRule
void main() {
  final instance = IoK8sApiNetworkingV1NetworkPolicyIngressRuleBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiNetworkingV1NetworkPolicyIngressRule, () {
    // List of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.
    // BuiltList<IoK8sApiNetworkingV1NetworkPolicyPeer> from
    test('to test the property `from`', () async {
      // TODO
    });

    // List of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
    // BuiltList<IoK8sApiNetworkingV1NetworkPolicyPort> ports
    test('to test the property `ports`', () async {
      // TODO
    });

  });
}
