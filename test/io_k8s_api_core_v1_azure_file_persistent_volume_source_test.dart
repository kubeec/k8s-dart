import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1AzureFilePersistentVolumeSource
void main() {
  final instance = IoK8sApiCoreV1AzureFilePersistentVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1AzureFilePersistentVolumeSource, () {
    // readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // secretName is the name of secret that contains Azure Storage Account Name and Key
    // String secretName
    test('to test the property `secretName`', () async {
      // TODO
    });

    // secretNamespace is the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod
    // String secretNamespace
    test('to test the property `secretNamespace`', () async {
      // TODO
    });

    // shareName is the azure Share Name
    // String shareName
    test('to test the property `shareName`', () async {
      // TODO
    });

  });
}
