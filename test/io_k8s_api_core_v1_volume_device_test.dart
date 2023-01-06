import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1VolumeDevice
void main() {
  final instance = IoK8sApiCoreV1VolumeDeviceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1VolumeDevice, () {
    // devicePath is the path inside of the container that the device will be mapped to.
    // String devicePath
    test('to test the property `devicePath`', () async {
      // TODO
    });

    // name must match the name of a persistentVolumeClaim in the pod
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

  });
}
