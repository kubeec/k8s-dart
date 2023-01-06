import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1PersistentVolumeStatus
void main() {
  final instance = IoK8sApiCoreV1PersistentVolumeStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1PersistentVolumeStatus, () {
    // message is a human-readable message indicating details about why the volume is in this state.
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // phase indicates if a volume is available, bound to a claim, or released by a claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase  
    // String phase
    test('to test the property `phase`', () async {
      // TODO
    });

    // reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.
    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });

  });
}
