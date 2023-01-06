import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1FlockerVolumeSource
void main() {
  final instance = IoK8sApiCoreV1FlockerVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1FlockerVolumeSource, () {
    // datasetName is Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated
    // String datasetName
    test('to test the property `datasetName`', () async {
      // TODO
    });

    // datasetUUID is the UUID of the dataset. This is unique identifier of a Flocker dataset
    // String datasetUUID
    test('to test the property `datasetUUID`', () async {
      // TODO
    });

  });
}
