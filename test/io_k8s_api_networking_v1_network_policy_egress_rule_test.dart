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

// tests for IoK8sApiNetworkingV1NetworkPolicyEgressRule
void main() {
  // final instance = IoK8sApiNetworkingV1NetworkPolicyEgressRule();

  group('test IoK8sApiNetworkingV1NetworkPolicyEgressRule', () {
    // List of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
    // List<IoK8sApiNetworkingV1NetworkPolicyPort> ports (default value: const [])
    test('to test the property `ports`', () async {
      // TODO
    });

    // List of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.
    // List<IoK8sApiNetworkingV1NetworkPolicyPeer> to (default value: const [])
    test('to test the property `to`', () async {
      // TODO
    });


  });

}
