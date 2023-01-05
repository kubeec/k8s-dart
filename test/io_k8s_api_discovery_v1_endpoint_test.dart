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

// tests for IoK8sApiDiscoveryV1Endpoint
void main() {
  // final instance = IoK8sApiDiscoveryV1Endpoint();

  group('test IoK8sApiDiscoveryV1Endpoint', () {
    // addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100. These are all assumed to be fungible and clients may choose to only use the first element. Refer to: https://issue.k8s.io/106267
    // List<String> addresses (default value: const [])
    test('to test the property `addresses`', () async {
      // TODO
    });

    // IoK8sApiDiscoveryV1EndpointConditions conditions
    test('to test the property `conditions`', () async {
      // TODO
    });

    // deprecatedTopology contains topology information part of the v1beta1 API. This field is deprecated, and will be removed when the v1beta1 API is removed (no sooner than kubernetes v1.24).  While this field can hold values, it is not writable through the v1 API, and any attempts to write to it will be silently ignored. Topology information can be found in the zone and nodeName fields instead.
    // Map<String, String> deprecatedTopology (default value: const {})
    test('to test the property `deprecatedTopology`', () async {
      // TODO
    });

    // IoK8sApiDiscoveryV1EndpointHints hints
    test('to test the property `hints`', () async {
      // TODO
    });

    // hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must be lowercase and pass DNS Label (RFC 1123) validation.
    // String hostname
    test('to test the property `hostname`', () async {
      // TODO
    });

    // nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node.
    // String nodeName
    test('to test the property `nodeName`', () async {
      // TODO
    });

    // IoK8sApiCoreV1ObjectReference targetRef
    test('to test the property `targetRef`', () async {
      // TODO
    });

    // zone is the name of the Zone this endpoint exists in.
    // String zone
    test('to test the property `zone`', () async {
      // TODO
    });


  });

}
