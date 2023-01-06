import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1HTTPGetAction
void main() {
  final instance = IoK8sApiCoreV1HTTPGetActionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1HTTPGetAction, () {
    // Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead.
    // String host
    test('to test the property `host`', () async {
      // TODO
    });

    // Custom headers to set in the request. HTTP allows repeated headers.
    // BuiltList<IoK8sApiCoreV1HTTPHeader> httpHeaders
    test('to test the property `httpHeaders`', () async {
      // TODO
    });

    // Path to access on the HTTP server.
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

    // IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
    // String port
    test('to test the property `port`', () async {
      // TODO
    });

    // Scheme to use for connecting to the host. Defaults to HTTP.  
    // String scheme
    test('to test the property `scheme`', () async {
      // TODO
    });

  });
}
