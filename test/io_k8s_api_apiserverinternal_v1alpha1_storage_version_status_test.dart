import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiApiserverinternalV1alpha1StorageVersionStatus
void main() {
  final instance = IoK8sApiApiserverinternalV1alpha1StorageVersionStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiApiserverinternalV1alpha1StorageVersionStatus, () {
    // If all API server instances agree on the same encoding storage version, then this field is set to that version. Otherwise this field is left empty. API servers should finish updating its storageVersionStatus entry before serving write operations, so that this field will be in sync with the reality.
    // String commonEncodingVersion
    test('to test the property `commonEncodingVersion`', () async {
      // TODO
    });

    // The latest available observations of the storageVersion's state.
    // BuiltList<IoK8sApiApiserverinternalV1alpha1StorageVersionCondition> conditions
    test('to test the property `conditions`', () async {
      // TODO
    });

    // The reported versions per API server instance.
    // BuiltList<IoK8sApiApiserverinternalV1alpha1ServerStorageVersion> storageVersions
    test('to test the property `storageVersions`', () async {
      // TODO
    });

  });
}
