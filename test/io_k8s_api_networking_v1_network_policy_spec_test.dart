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

// tests for IoK8sApiNetworkingV1NetworkPolicySpec
void main() {
  // final instance = IoK8sApiNetworkingV1NetworkPolicySpec();

  group('test IoK8sApiNetworkingV1NetworkPolicySpec', () {
    // List of egress rules to be applied to the selected pods. Outgoing traffic is allowed if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic matches at least one egress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy limits all outgoing traffic (and serves solely to ensure that the pods it selects are isolated by default). This field is beta-level in 1.8
    // List<IoK8sApiNetworkingV1NetworkPolicyEgressRule> egress (default value: const [])
    test('to test the property `egress`', () async {
      // TODO
    });

    // List of ingress rules to be applied to the selected pods. Traffic is allowed to a pod if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic source is the pod's local node, OR if the traffic matches at least one ingress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy does not allow any traffic (and serves solely to ensure that the pods it selects are isolated by default)
    // List<IoK8sApiNetworkingV1NetworkPolicyIngressRule> ingress (default value: const [])
    test('to test the property `ingress`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1LabelSelector podSelector
    test('to test the property `podSelector`', () async {
      // TODO
    });

    // List of rule types that the NetworkPolicy relates to. Valid options are [\"Ingress\"], [\"Egress\"], or [\"Ingress\", \"Egress\"]. If this field is not specified, it will default based on the existence of Ingress or Egress rules; policies that contain an Egress section are assumed to affect Egress, and all policies (whether or not they contain an Ingress section) are assumed to affect Ingress. If you want to write an egress-only policy, you must explicitly specify policyTypes [ \"Egress\" ]. Likewise, if you want to write a policy that specifies that no egress is allowed, you must specify a policyTypes value that include \"Egress\" (since such a policy would not include an Egress section and would otherwise default to just [ \"Ingress\" ]). This field is beta-level in 1.8
    // List<String> policyTypes (default value: const [])
    test('to test the property `policyTypes`', () async {
      // TODO
    });


  });

}
