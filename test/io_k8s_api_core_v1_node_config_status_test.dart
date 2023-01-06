import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1NodeConfigStatus
void main() {
  final instance = IoK8sApiCoreV1NodeConfigStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1NodeConfigStatus, () {
    // IoK8sApiCoreV1NodeConfigSource active
    test('to test the property `active`', () async {
      // TODO
    });

    // IoK8sApiCoreV1NodeConfigSource assigned
    test('to test the property `assigned`', () async {
      // TODO
    });

    // Error describes any problems reconciling the Spec.ConfigSource to the Active config. Errors may occur, for example, attempting to checkpoint Spec.ConfigSource to the local Assigned record, attempting to checkpoint the payload associated with Spec.ConfigSource, attempting to load or validate the Assigned config, etc. Errors may occur at different points while syncing config. Earlier errors (e.g. download or checkpointing errors) will not result in a rollback to LastKnownGood, and may resolve across Kubelet retries. Later errors (e.g. loading or validating a checkpointed config) will result in a rollback to LastKnownGood. In the latter case, it is usually possible to resolve the error by fixing the config assigned in Spec.ConfigSource. You can find additional information for debugging by searching the error message in the Kubelet log. Error is a human-readable description of the error state; machines can check whether or not Error is empty, but should not rely on the stability of the Error text across Kubelet versions.
    // String error
    test('to test the property `error`', () async {
      // TODO
    });

    // IoK8sApiCoreV1NodeConfigSource lastKnownGood
    test('to test the property `lastKnownGood`', () async {
      // TODO
    });

  });
}
