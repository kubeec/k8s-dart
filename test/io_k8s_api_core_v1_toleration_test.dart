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

// tests for IoK8sApiCoreV1Toleration
void main() {
  // final instance = IoK8sApiCoreV1Toleration();

  group('test IoK8sApiCoreV1Toleration', () {
    // Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.  
    // String effect
    test('to test the property `effect`', () async {
      // TODO
    });

    // Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.
    // String key
    test('to test the property `key`', () async {
      // TODO
    });

    // Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.  
    // String operator_
    test('to test the property `operator_`', () async {
      // TODO
    });

    // TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.
    // int tolerationSeconds
    test('to test the property `tolerationSeconds`', () async {
      // TODO
    });

    // Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.
    // String value
    test('to test the property `value`', () async {
      // TODO
    });


  });

}
