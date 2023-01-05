//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:k8s/api.dart';
import 'package:test/test.dart';

// tests for IoK8sApiAppsV1RollingUpdateStatefulSetStrategy
void main() {
  // final instance = IoK8sApiAppsV1RollingUpdateStatefulSetStrategy();

  group('test IoK8sApiAppsV1RollingUpdateStatefulSetStrategy', () {
    // IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
    // String maxUnavailable
    test('to test the property `maxUnavailable`', () async {
      // TODO
    });

    // Partition indicates the ordinal at which the StatefulSet should be partitioned for updates. During a rolling update, all pods from ordinal Replicas-1 to Partition are updated. All pods from ordinal Partition-1 to 0 remain untouched. This is helpful in being able to do a canary based deployment. The default value is 0.
    // int partition
    test('to test the property `partition`', () async {
      // TODO
    });


  });

}
