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

// tests for IoK8sApiAppsV1DeploymentSpec
void main() {
  // final instance = IoK8sApiAppsV1DeploymentSpec();

  group('test IoK8sApiAppsV1DeploymentSpec', () {
    // Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
    // int minReadySeconds
    test('to test the property `minReadySeconds`', () async {
      // TODO
    });

    // Indicates that the deployment is paused.
    // bool paused
    test('to test the property `paused`', () async {
      // TODO
    });

    // The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s.
    // int progressDeadlineSeconds
    test('to test the property `progressDeadlineSeconds`', () async {
      // TODO
    });

    // Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
    // int replicas
    test('to test the property `replicas`', () async {
      // TODO
    });

    // The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
    // int revisionHistoryLimit
    test('to test the property `revisionHistoryLimit`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1LabelSelector selector
    test('to test the property `selector`', () async {
      // TODO
    });

    // IoK8sApiAppsV1DeploymentStrategy strategy
    test('to test the property `strategy`', () async {
      // TODO
    });

    // IoK8sApiCoreV1PodTemplateSpec template
    test('to test the property `template`', () async {
      // TODO
    });


  });

}
