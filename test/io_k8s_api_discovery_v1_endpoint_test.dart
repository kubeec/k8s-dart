import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiDiscoveryV1Endpoint
void main() {
  final instance = IoK8sApiDiscoveryV1EndpointBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiDiscoveryV1Endpoint, () {
    // addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100. These are all assumed to be fungible and clients may choose to only use the first element. Refer to: https://issue.k8s.io/106267
    // BuiltList<String> addresses
    test('to test the property `addresses`', () async {
      // TODO
    });

    // IoK8sApiDiscoveryV1EndpointConditions conditions
    test('to test the property `conditions`', () async {
      // TODO
    });

    // deprecatedTopology contains topology information part of the v1beta1 API. This field is deprecated, and will be removed when the v1beta1 API is removed (no sooner than kubernetes v1.24).  While this field can hold values, it is not writable through the v1 API, and any attempts to write to it will be silently ignored. Topology information can be found in the zone and nodeName fields instead.
    // BuiltMap<String, String> deprecatedTopology
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
