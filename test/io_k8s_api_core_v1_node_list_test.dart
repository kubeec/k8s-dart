import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1NodeList
void main() {
  final instance = IoK8sApiCoreV1NodeListBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1NodeList, () {
    // APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    // String apiVersion
    test('to test the property `apiVersion`', () async {
      // TODO
    });

    // List of nodes
    // BuiltList<IoK8sApiCoreV1Node> items
    test('to test the property `items`', () async {
      // TODO
    });

    // Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1ListMeta metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

  });
}
