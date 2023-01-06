import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1NFSVolumeSource
void main() {
  final instance = IoK8sApiCoreV1NFSVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1NFSVolumeSource, () {
    // path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

    // readOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
    // String server
    test('to test the property `server`', () async {
      // TODO
    });

  });
}
