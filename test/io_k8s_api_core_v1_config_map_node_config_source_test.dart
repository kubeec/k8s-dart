import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1ConfigMapNodeConfigSource
void main() {
  final instance = IoK8sApiCoreV1ConfigMapNodeConfigSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1ConfigMapNodeConfigSource, () {
    // KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.
    // String kubeletConfigKey
    test('to test the property `kubeletConfigKey`', () async {
      // TODO
    });

    // Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.
    // String namespace
    test('to test the property `namespace`', () async {
      // TODO
    });

    // ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
    // String resourceVersion
    test('to test the property `resourceVersion`', () async {
      // TODO
    });

    // UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
    // String uid
    test('to test the property `uid`', () async {
      // TODO
    });

  });
}
