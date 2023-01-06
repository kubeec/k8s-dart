import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1ClientIPConfig
void main() {
  final instance = IoK8sApiCoreV1ClientIPConfigBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1ClientIPConfig, () {
    // timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == \"ClientIP\". Default value is 10800(for 3 hours).
    // int timeoutSeconds
    test('to test the property `timeoutSeconds`', () async {
      // TODO
    });

  });
}
