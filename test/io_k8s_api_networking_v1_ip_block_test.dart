import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiNetworkingV1IPBlock
void main() {
  final instance = IoK8sApiNetworkingV1IPBlockBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiNetworkingV1IPBlock, () {
    // CIDR is a string representing the IP Block Valid examples are \"192.168.1.0/24\" or \"2001:db8::/64\"
    // String cidr
    test('to test the property `cidr`', () async {
      // TODO
    });

    // Except is a slice of CIDRs that should not be included within an IP Block Valid examples are \"192.168.1.0/24\" or \"2001:db8::/64\" Except values will be rejected if they are outside the CIDR range
    // BuiltList<String> except
    test('to test the property `except`', () async {
      // TODO
    });

  });
}
