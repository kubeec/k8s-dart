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

// tests for IoK8sApimachineryPkgApisMetaV1APIGroup
void main() {
  // final instance = IoK8sApimachineryPkgApisMetaV1APIGroup();

  group('test IoK8sApimachineryPkgApisMetaV1APIGroup', () {
    // APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    // String apiVersion
    test('to test the property `apiVersion`', () async {
      // TODO
    });

    // Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // name is the name of the group.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery preferredVersion
    test('to test the property `preferredVersion`', () async {
      // TODO
    });

    // a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
    // List<IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR> serverAddressByClientCIDRs (default value: const [])
    test('to test the property `serverAddressByClientCIDRs`', () async {
      // TODO
    });

    // versions are the versions supported in this group.
    // List<IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery> versions (default value: const [])
    test('to test the property `versions`', () async {
      // TODO
    });


  });

}
