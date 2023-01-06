import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1PersistentVolumeClaimVolumeSource
void main() {
  final instance = IoK8sApiCoreV1PersistentVolumeClaimVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1PersistentVolumeClaimVolumeSource, () {
    // claimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
    // String claimName
    test('to test the property `claimName`', () async {
      // TODO
    });

    // readOnly Will force the ReadOnly setting in VolumeMounts. Default false.
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

  });
}
