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

// tests for IoK8sApiNetworkingV1NetworkPolicyPort
void main() {
  // final instance = IoK8sApiNetworkingV1NetworkPolicyPort();

  group('test IoK8sApiNetworkingV1NetworkPolicyPort', () {
    // If set, indicates that the range of ports from port to endPort, inclusive, should be allowed by the policy. This field cannot be defined if the port field is not defined or if the port field is defined as a named (string) port. The endPort must be equal or greater than port.
    // int endPort
    test('to test the property `endPort`', () async {
      // TODO
    });

    // IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
    // String port
    test('to test the property `port`', () async {
      // TODO
    });

    // The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
    // String protocol
    test('to test the property `protocol`', () async {
      // TODO
    });


  });

}
