import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApimachineryPkgApisMetaV1StatusCause
void main() {
  final instance = IoK8sApimachineryPkgApisMetaV1StatusCauseBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApimachineryPkgApisMetaV1StatusCause, () {
    // The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.  Examples:   \"name\" - the field \"name\" on the current resource   \"items[0].name\" - the field \"name\" on the first array entry in \"items\"
    // String field
    test('to test the property `field`', () async {
      // TODO
    });

    // A human-readable description of the cause of the error.  This field may be presented as-is to a reader.
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // A machine-readable description of the cause of the error. If this value is empty there is no information available.
    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });

  });
}
