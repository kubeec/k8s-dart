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

// tests for IoK8sApiCoreV1EndpointSubset
void main() {
  // final instance = IoK8sApiCoreV1EndpointSubset();

  group('test IoK8sApiCoreV1EndpointSubset', () {
    // IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize.
    // List<IoK8sApiCoreV1EndpointAddress> addresses (default value: const [])
    test('to test the property `addresses`', () async {
      // TODO
    });

    // IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.
    // List<IoK8sApiCoreV1EndpointAddress> notReadyAddresses (default value: const [])
    test('to test the property `notReadyAddresses`', () async {
      // TODO
    });

    // Port numbers available on the related IP addresses.
    // List<IoK8sApiCoreV1EndpointPort> ports (default value: const [])
    test('to test the property `ports`', () async {
      // TODO
    });


  });

}
