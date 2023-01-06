import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1ObjectReference
void main() {
  final instance = IoK8sApiCoreV1ObjectReferenceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1ObjectReference, () {
    // API version of the referent.
    // String apiVersion
    test('to test the property `apiVersion`', () async {
      // TODO
    });

    // If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: \"spec.containers{name}\" (where \"name\" refers to the name of the container that triggered the event) or if no container name is specified \"spec.containers[2]\" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.
    // String fieldPath
    test('to test the property `fieldPath`', () async {
      // TODO
    });

    // Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
    // String namespace
    test('to test the property `namespace`', () async {
      // TODO
    });

    // Specific resourceVersion to which this reference is made, if any. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
    // String resourceVersion
    test('to test the property `resourceVersion`', () async {
      // TODO
    });

    // UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids
    // String uid
    test('to test the property `uid`', () async {
      // TODO
    });

  });
}
