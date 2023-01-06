import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1VolumeMount
void main() {
  final instance = IoK8sApiCoreV1VolumeMountBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1VolumeMount, () {
    // Path within the container at which the volume should be mounted.  Must not contain ':'.
    // String mountPath
    test('to test the property `mountPath`', () async {
      // TODO
    });

    // mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10.
    // String mountPropagation
    test('to test the property `mountPropagation`', () async {
      // TODO
    });

    // This must match the Name of a Volume.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // Path within the volume from which the container's volume should be mounted. Defaults to \"\" (volume's root).
    // String subPath
    test('to test the property `subPath`', () async {
      // TODO
    });

    // Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to \"\" (volume's root). SubPathExpr and SubPath are mutually exclusive.
    // String subPathExpr
    test('to test the property `subPathExpr`', () async {
      // TODO
    });

  });
}
