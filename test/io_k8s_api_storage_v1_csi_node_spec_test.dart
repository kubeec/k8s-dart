import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiStorageV1CSINodeSpec
void main() {
  final instance = IoK8sApiStorageV1CSINodeSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiStorageV1CSINodeSpec, () {
    // drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
    // BuiltList<IoK8sApiStorageV1CSINodeDriver> drivers
    test('to test the property `drivers`', () async {
      // TODO
    });

  });
}
