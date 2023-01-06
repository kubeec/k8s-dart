import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1ConfigMapProjection
void main() {
  final instance = IoK8sApiCoreV1ConfigMapProjectionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1ConfigMapProjection, () {
    // items if unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
    // BuiltList<IoK8sApiCoreV1KeyToPath> items
    test('to test the property `items`', () async {
      // TODO
    });

    // Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // optional specify whether the ConfigMap or its keys must be defined
    // bool optional
    test('to test the property `optional`', () async {
      // TODO
    });

  });
}
