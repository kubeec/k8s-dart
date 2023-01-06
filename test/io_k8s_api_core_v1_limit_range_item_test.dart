import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1LimitRangeItem
void main() {
  final instance = IoK8sApiCoreV1LimitRangeItemBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1LimitRangeItem, () {
    // Default resource requirement limit value by resource name if resource limit is omitted.
    // BuiltMap<String, String> default_
    test('to test the property `default_`', () async {
      // TODO
    });

    // DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.
    // BuiltMap<String, String> defaultRequest
    test('to test the property `defaultRequest`', () async {
      // TODO
    });

    // Max usage constraints on this kind by resource name.
    // BuiltMap<String, String> max
    test('to test the property `max`', () async {
      // TODO
    });

    // MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.
    // BuiltMap<String, String> maxLimitRequestRatio
    test('to test the property `maxLimitRequestRatio`', () async {
      // TODO
    });

    // Min usage constraints on this kind by resource name.
    // BuiltMap<String, String> min
    test('to test the property `min`', () async {
      // TODO
    });

    // Type of resource that this limit applies to.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
