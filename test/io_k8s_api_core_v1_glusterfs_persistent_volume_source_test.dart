import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1GlusterfsPersistentVolumeSource
void main() {
  final instance = IoK8sApiCoreV1GlusterfsPersistentVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1GlusterfsPersistentVolumeSource, () {
    // endpoints is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    // String endpoints
    test('to test the property `endpoints`', () async {
      // TODO
    });

    // endpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    // String endpointsNamespace
    test('to test the property `endpointsNamespace`', () async {
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
