import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApimachineryPkgApisMetaV1Status
void main() {
  final instance = IoK8sApimachineryPkgApisMetaV1StatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApimachineryPkgApisMetaV1Status, () {
    // APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    // String apiVersion
    test('to test the property `apiVersion`', () async {
      // TODO
    });

    // Suggested HTTP return code for this status, 0 if not set.
    // int code
    test('to test the property `code`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1StatusDetails details
    test('to test the property `details`', () async {
      // TODO
    });

    // Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // A human-readable description of the status of this operation.
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1ListMeta metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

    // A machine-readable description of why this operation is in the \"Failure\" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });

    // Status of the operation. One of: \"Success\" or \"Failure\". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

  });
}
