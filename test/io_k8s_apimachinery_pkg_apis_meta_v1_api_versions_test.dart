import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApimachineryPkgApisMetaV1APIVersions
void main() {
  final instance = IoK8sApimachineryPkgApisMetaV1APIVersionsBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApimachineryPkgApisMetaV1APIVersions, () {
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

    // a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
    // BuiltList<IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR> serverAddressByClientCIDRs
    test('to test the property `serverAddressByClientCIDRs`', () async {
      // TODO
    });

    // versions are the api versions that are available.
    // BuiltList<String> versions
    test('to test the property `versions`', () async {
      // TODO
    });

  });
}
