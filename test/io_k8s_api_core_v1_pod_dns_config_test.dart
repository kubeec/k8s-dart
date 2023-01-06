import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1PodDNSConfig
void main() {
  final instance = IoK8sApiCoreV1PodDNSConfigBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1PodDNSConfig, () {
    // A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.
    // BuiltList<String> nameservers
    test('to test the property `nameservers`', () async {
      // TODO
    });

    // A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.
    // BuiltList<IoK8sApiCoreV1PodDNSConfigOption> options
    test('to test the property `options`', () async {
      // TODO
    });

    // A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.
    // BuiltList<String> searches
    test('to test the property `searches`', () async {
      // TODO
    });

  });
}
