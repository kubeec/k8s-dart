import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiDiscoveryV1EndpointSlice
void main() {
  final instance = IoK8sApiDiscoveryV1EndpointSliceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiDiscoveryV1EndpointSlice, () {
    // addressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. The following address types are currently supported: * IPv4: Represents an IPv4 Address. * IPv6: Represents an IPv6 Address. * FQDN: Represents a Fully Qualified Domain Name.  
    // String addressType
    test('to test the property `addressType`', () async {
      // TODO
    });

    // APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    // String apiVersion
    test('to test the property `apiVersion`', () async {
      // TODO
    });

    // endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints.
    // BuiltList<IoK8sApiDiscoveryV1Endpoint> endpoints
    test('to test the property `endpoints`', () async {
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

    // ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates \"all ports\". Each slice may include a maximum of 100 ports.
    // BuiltList<IoK8sApiDiscoveryV1EndpointPort> ports
    test('to test the property `ports`', () async {
      // TODO
    });

  });
}
