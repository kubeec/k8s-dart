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

// tests for IoK8sApiAutoscalingV2HPAScalingRules
void main() {
  // final instance = IoK8sApiAutoscalingV2HPAScalingRules();

  group('test IoK8sApiAutoscalingV2HPAScalingRules', () {
    // policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid
    // List<IoK8sApiAutoscalingV2HPAScalingPolicy> policies (default value: const [])
    test('to test the property `policies`', () async {
      // TODO
    });

    // selectPolicy is used to specify which policy should be used. If not set, the default value Max is used.
    // String selectPolicy
    test('to test the property `selectPolicy`', () async {
      // TODO
    });

    // StabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long).
    // int stabilizationWindowSeconds
    test('to test the property `stabilizationWindowSeconds`', () async {
      // TODO
    });


  });

}
