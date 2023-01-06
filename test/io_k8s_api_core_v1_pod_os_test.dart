import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1PodOS
void main() {
  final instance = IoK8sApiCoreV1PodOSBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1PodOS, () {
    // Name is the name of the operating system. The currently supported values are linux and windows. Additional value may be defined in future and can be one of: https://github.com/opencontainers/runtime-spec/blob/master/config.md#platform-specific-configuration Clients should expect to handle additional values and treat unrecognized values in this field as os: null
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

  });
}
