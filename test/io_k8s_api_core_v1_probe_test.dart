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

// tests for IoK8sApiCoreV1Probe
void main() {
  // final instance = IoK8sApiCoreV1Probe();

  group('test IoK8sApiCoreV1Probe', () {
    // IoK8sApiCoreV1ExecAction exec
    test('to test the property `exec`', () async {
      // TODO
    });

    // Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
    // int failureThreshold
    test('to test the property `failureThreshold`', () async {
      // TODO
    });

    // IoK8sApiCoreV1GRPCAction grpc
    test('to test the property `grpc`', () async {
      // TODO
    });

    // IoK8sApiCoreV1HTTPGetAction httpGet
    test('to test the property `httpGet`', () async {
      // TODO
    });

    // Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
    // int initialDelaySeconds
    test('to test the property `initialDelaySeconds`', () async {
      // TODO
    });

    // How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
    // int periodSeconds
    test('to test the property `periodSeconds`', () async {
      // TODO
    });

    // Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.
    // int successThreshold
    test('to test the property `successThreshold`', () async {
      // TODO
    });

    // IoK8sApiCoreV1TCPSocketAction tcpSocket
    test('to test the property `tcpSocket`', () async {
      // TODO
    });

    // Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate. Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset.
    // int terminationGracePeriodSeconds
    test('to test the property `terminationGracePeriodSeconds`', () async {
      // TODO
    });

    // Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
    // int timeoutSeconds
    test('to test the property `timeoutSeconds`', () async {
      // TODO
    });


  });

}
