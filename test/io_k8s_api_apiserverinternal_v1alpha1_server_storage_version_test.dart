import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiApiserverinternalV1alpha1ServerStorageVersion
void main() {
  final instance = IoK8sApiApiserverinternalV1alpha1ServerStorageVersionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiApiserverinternalV1alpha1ServerStorageVersion, () {
    // The ID of the reporting API server.
    // String apiServerID
    test('to test the property `apiServerID`', () async {
      // TODO
    });

    // The API server can decode objects encoded in these versions. The encodingVersion must be included in the decodableVersions.
    // BuiltList<String> decodableVersions
    test('to test the property `decodableVersions`', () async {
      // TODO
    });

    // The API server encodes the object to this version when persisting it in the backend (e.g., etcd).
    // String encodingVersion
    test('to test the property `encodingVersion`', () async {
      // TODO
    });

  });
}
