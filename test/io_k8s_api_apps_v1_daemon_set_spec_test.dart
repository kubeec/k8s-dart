import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAppsV1DaemonSetSpec
void main() {
  final instance = IoK8sApiAppsV1DaemonSetSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAppsV1DaemonSetSpec, () {
    // The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
    // int minReadySeconds
    test('to test the property `minReadySeconds`', () async {
      // TODO
    });

    // The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
    // int revisionHistoryLimit
    test('to test the property `revisionHistoryLimit`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1LabelSelector selector
    test('to test the property `selector`', () async {
      // TODO
    });

    // IoK8sApiCoreV1PodTemplateSpec template
    test('to test the property `template`', () async {
      // TODO
    });

    // IoK8sApiAppsV1DaemonSetUpdateStrategy updateStrategy
    test('to test the property `updateStrategy`', () async {
      // TODO
    });

  });
}
