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

// tests for IoK8sApiCoreV1Endpoints
void main() {
  // final instance = IoK8sApiCoreV1Endpoints();

  group('test IoK8sApiCoreV1Endpoints', () {
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

    // IoK8sApimachineryPkgApisMetaV1ObjectMeta metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

    // The set of all endpoints is the union of all subsets. Addresses are placed into subsets according to the IPs they share. A single address with multiple ports, some of which are ready and some of which are not (because they come from different containers) will result in the address being displayed in different subsets for the different ports. No address will appear in both Addresses and NotReadyAddresses in the same subset. Sets of addresses and ports that comprise a service.
    // List<IoK8sApiCoreV1EndpointSubset> subsets (default value: const [])
    test('to test the property `subsets`', () async {
      // TODO
    });


  });

}
