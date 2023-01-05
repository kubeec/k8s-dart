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

// tests for IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationSpec
void main() {
  // final instance = IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationSpec();

  group('test IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationSpec', () {
    // IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration limited
    test('to test the property `limited`', () async {
      // TODO
    });

    // `type` indicates whether this priority level is subject to limitation on request execution.  A value of `\"Exempt\"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `\"Limited\"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });


  });

}
