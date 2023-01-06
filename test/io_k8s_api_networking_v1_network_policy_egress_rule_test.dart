import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiNetworkingV1NetworkPolicyEgressRule
void main() {
  final instance = IoK8sApiNetworkingV1NetworkPolicyEgressRuleBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiNetworkingV1NetworkPolicyEgressRule, () {
    // List of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
    // BuiltList<IoK8sApiNetworkingV1NetworkPolicyPort> ports
    test('to test the property `ports`', () async {
      // TODO
    });

    // List of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.
    // BuiltList<IoK8sApiNetworkingV1NetworkPolicyPeer> to
    test('to test the property `to`', () async {
      // TODO
    });

  });
}
