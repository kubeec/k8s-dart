import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy
void main() {
  final instance = IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicyBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy, () {
    // WhenDeleted specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is deleted. The default policy of `Retain` causes PVCs to not be affected by StatefulSet deletion. The `Delete` policy causes those PVCs to be deleted.
    // String whenDeleted
    test('to test the property `whenDeleted`', () async {
      // TODO
    });

    // WhenScaled specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is scaled down. The default policy of `Retain` causes PVCs to not be affected by a scaledown. The `Delete` policy causes the associated PVCs for any excess pods above the replica count to be deleted.
    // String whenScaled
    test('to test the property `whenScaled`', () async {
      // TODO
    });

  });
}
