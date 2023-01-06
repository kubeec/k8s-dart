import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1ComponentCondition
void main() {
  final instance = IoK8sApiCoreV1ComponentConditionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1ComponentCondition, () {
    // Condition error code for a component. For example, a health check error code.
    // String error
    test('to test the property `error`', () async {
      // TODO
    });

    // Message about the condition for a component. For example, information about a health check.
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // Status of the condition for a component. Valid values for \"Healthy\": \"True\", \"False\", or \"Unknown\".
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // Type of condition for a component. Valid value: \"Healthy\"
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
