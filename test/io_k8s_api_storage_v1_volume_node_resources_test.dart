import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiStorageV1VolumeNodeResources
void main() {
  final instance = IoK8sApiStorageV1VolumeNodeResourcesBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiStorageV1VolumeNodeResources, () {
    // Maximum number of unique volumes managed by the CSI driver that can be used on a node. A volume that is both attached and mounted on a node is considered to be used once, not twice. The same rule applies for a unique volume that is shared among multiple pods on the same node. If this field is not specified, then the supported number of volumes on this node is unbounded.
    // int count
    test('to test the property `count`', () async {
      // TODO
    });

  });
}
