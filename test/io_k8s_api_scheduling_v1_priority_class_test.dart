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

// tests for IoK8sApiSchedulingV1PriorityClass
void main() {
  // final instance = IoK8sApiSchedulingV1PriorityClass();

  group('test IoK8sApiSchedulingV1PriorityClass', () {
    // APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    // String apiVersion
    test('to test the property `apiVersion`', () async {
      // TODO
    });

    // description is an arbitrary string that usually provides guidelines on when this priority class should be used.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // globalDefault specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority.
    // bool globalDefault
    test('to test the property `globalDefault`', () async {
      // TODO
    });

    // Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1ObjectMeta metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

    // PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
    // String preemptionPolicy
    test('to test the property `preemptionPolicy`', () async {
      // TODO
    });

    // The value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec.
    // int value
    test('to test the property `value`', () async {
      // TODO
    });


  });

}
