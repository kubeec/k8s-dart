import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1QuobyteVolumeSource
void main() {
  final instance = IoK8sApiCoreV1QuobyteVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1QuobyteVolumeSource, () {
    // group to map volume access to Default is no group
    // String group
    test('to test the property `group`', () async {
      // TODO
    });

    // readOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes
    // String registry
    test('to test the property `registry`', () async {
      // TODO
    });

    // tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin
    // String tenant
    test('to test the property `tenant`', () async {
      // TODO
    });

    // user to map volume access to Defaults to serivceaccount user
    // String user
    test('to test the property `user`', () async {
      // TODO
    });

    // volume is a string that references an already created Quobyte volume by name.
    // String volume
    test('to test the property `volume`', () async {
      // TODO
    });

  });
}
