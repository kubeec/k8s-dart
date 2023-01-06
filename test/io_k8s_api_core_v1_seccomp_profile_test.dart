import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1SeccompProfile
void main() {
  final instance = IoK8sApiCoreV1SeccompProfileBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1SeccompProfile, () {
    // localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must only be set if type is \"Localhost\".
    // String localhostProfile
    test('to test the property `localhostProfile`', () async {
      // TODO
    });

    // type indicates which kind of seccomp profile will be applied. Valid options are:  Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.  
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
