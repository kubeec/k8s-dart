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

// tests for IoK8sApiCoreV1ContainerPort
void main() {
  // final instance = IoK8sApiCoreV1ContainerPort();

  group('test IoK8sApiCoreV1ContainerPort', () {
    // Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536.
    // int containerPort
    test('to test the property `containerPort`', () async {
      // TODO
    });

    // What host IP to bind the external port to.
    // String hostIP
    test('to test the property `hostIP`', () async {
      // TODO
    });

    // Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this.
    // int hostPort
    test('to test the property `hostPort`', () async {
      // TODO
    });

    // If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Protocol for port. Must be UDP, TCP, or SCTP. Defaults to \"TCP\".  
    // String protocol
    test('to test the property `protocol`', () async {
      // TODO
    });


  });

}
