import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1TCPSocketAction
void main() {
  final instance = IoK8sApiCoreV1TCPSocketActionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1TCPSocketAction, () {
    // Optional: Host name to connect to, defaults to the pod IP.
    // String host
    test('to test the property `host`', () async {
      // TODO
    });

    // IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
    // String port
    test('to test the property `port`', () async {
      // TODO
    });

  });
}
