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

// tests for IoK8sApiNodeV1Scheduling
void main() {
  // final instance = IoK8sApiNodeV1Scheduling();

  group('test IoK8sApiNodeV1Scheduling', () {
    // nodeSelector lists labels that must be present on nodes that support this RuntimeClass. Pods using this RuntimeClass can only be scheduled to a node matched by this selector. The RuntimeClass nodeSelector is merged with a pod's existing nodeSelector. Any conflicts will cause the pod to be rejected in admission.
    // Map<String, String> nodeSelector (default value: const {})
    test('to test the property `nodeSelector`', () async {
      // TODO
    });

    // tolerations are appended (excluding duplicates) to pods running with this RuntimeClass during admission, effectively unioning the set of nodes tolerated by the pod and the RuntimeClass.
    // List<IoK8sApiCoreV1Toleration> tolerations (default value: const [])
    test('to test the property `tolerations`', () async {
      // TODO
    });


  });

}
