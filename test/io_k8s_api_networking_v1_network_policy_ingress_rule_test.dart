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

// tests for IoK8sApiNetworkingV1NetworkPolicyIngressRule
void main() {
  // final instance = IoK8sApiNetworkingV1NetworkPolicyIngressRule();

  group('test IoK8sApiNetworkingV1NetworkPolicyIngressRule', () {
    // List of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.
    // List<IoK8sApiNetworkingV1NetworkPolicyPeer> from (default value: const [])
    test('to test the property `from`', () async {
      // TODO
    });

    // List of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
    // List<IoK8sApiNetworkingV1NetworkPolicyPort> ports (default value: const [])
    test('to test the property `ports`', () async {
      // TODO
    });


  });

}
