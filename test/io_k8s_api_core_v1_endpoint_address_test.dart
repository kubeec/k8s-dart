import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1EndpointAddress
void main() {
  final instance = IoK8sApiCoreV1EndpointAddressBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1EndpointAddress, () {
    // The Hostname of this endpoint
    // String hostname
    test('to test the property `hostname`', () async {
      // TODO
    });

    // The IP of this endpoint. May not be loopback (127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.
    // String ip
    test('to test the property `ip`', () async {
      // TODO
    });

    // Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node.
    // String nodeName
    test('to test the property `nodeName`', () async {
      // TODO
    });

    // IoK8sApiCoreV1ObjectReference targetRef
    test('to test the property `targetRef`', () async {
      // TODO
    });

  });
}
