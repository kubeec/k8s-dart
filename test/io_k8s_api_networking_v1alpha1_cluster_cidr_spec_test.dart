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

// tests for IoK8sApiNetworkingV1alpha1ClusterCIDRSpec
void main() {
  // final instance = IoK8sApiNetworkingV1alpha1ClusterCIDRSpec();

  group('test IoK8sApiNetworkingV1alpha1ClusterCIDRSpec', () {
    // IPv4 defines an IPv4 IP block in CIDR notation(e.g. \"10.0.0.0/8\"). At least one of IPv4 and IPv6 must be specified. This field is immutable.
    // String ipv4
    test('to test the property `ipv4`', () async {
      // TODO
    });

    // IPv6 defines an IPv6 IP block in CIDR notation(e.g. \"2001:db8::/64\"). At least one of IPv4 and IPv6 must be specified. This field is immutable.
    // String ipv6
    test('to test the property `ipv6`', () async {
      // TODO
    });

    // IoK8sApiCoreV1NodeSelector nodeSelector
    test('to test the property `nodeSelector`', () async {
      // TODO
    });

    // PerNodeHostBits defines the number of host bits to be configured per node. A subnet mask determines how much of the address is used for network bits and host bits. For example an IPv4 address of 192.168.0.0/24, splits the address into 24 bits for the network portion and 8 bits for the host portion. To allocate 256 IPs, set this field to 8 (a /24 mask for IPv4 or a /120 for IPv6). Minimum value is 4 (16 IPs). This field is immutable.
    // int perNodeHostBits
    test('to test the property `perNodeHostBits`', () async {
      // TODO
    });


  });

}
