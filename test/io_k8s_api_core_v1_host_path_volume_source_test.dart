import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1HostPathVolumeSource
void main() {
  final instance = IoK8sApiCoreV1HostPathVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1HostPathVolumeSource, () {
    // path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

    // type for HostPath Volume Defaults to \"\" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
