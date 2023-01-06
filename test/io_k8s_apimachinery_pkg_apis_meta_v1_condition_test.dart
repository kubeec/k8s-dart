import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApimachineryPkgApisMetaV1Condition
void main() {
  final instance = IoK8sApimachineryPkgApisMetaV1ConditionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApimachineryPkgApisMetaV1Condition, () {
    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime lastTransitionTime
    test('to test the property `lastTransitionTime`', () async {
      // TODO
    });

    // message is a human readable message indicating details about the transition. This may be an empty string.
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
    // int observedGeneration
    test('to test the property `observedGeneration`', () async {
      // TODO
    });

    // reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty.
    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });

    // status of the condition, one of True, False, Unknown.
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // type of condition in CamelCase or in foo.example.com/CamelCase.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
