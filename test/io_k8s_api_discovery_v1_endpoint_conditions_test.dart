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

// tests for IoK8sApiDiscoveryV1EndpointConditions
void main() {
  // final instance = IoK8sApiDiscoveryV1EndpointConditions();

  group('test IoK8sApiDiscoveryV1EndpointConditions', () {
    // ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready. For compatibility reasons, ready should never be \"true\" for terminating endpoints.
    // bool ready
    test('to test the property `ready`', () async {
      // TODO
    });

    // serving is identical to ready except that it is set regardless of the terminating state of endpoints. This condition should be set to true for a ready endpoint that is terminating. If nil, consumers should defer to the ready condition.
    // bool serving
    test('to test the property `serving`', () async {
      // TODO
    });

    // terminating indicates that this endpoint is terminating. A nil value indicates an unknown state. Consumers should interpret this unknown state to mean that the endpoint is not terminating.
    // bool terminating
    test('to test the property `terminating`', () async {
      // TODO
    });


  });

}
