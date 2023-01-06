import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1GlusterfsVolumeSource
void main() {
  final instance = IoK8sApiCoreV1GlusterfsVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1GlusterfsVolumeSource, () {
    // endpoints is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    // String endpoints
    test('to test the property `endpoints`', () async {
      // TODO
    });

    // path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

    // readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

  });
}
