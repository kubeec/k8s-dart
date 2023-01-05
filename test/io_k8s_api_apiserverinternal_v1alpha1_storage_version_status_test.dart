//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:k8s/api.dart';
import 'package:test/test.dart';

// tests for IoK8sApiApiserverinternalV1alpha1StorageVersionStatus
void main() {
  // final instance = IoK8sApiApiserverinternalV1alpha1StorageVersionStatus();

  group('test IoK8sApiApiserverinternalV1alpha1StorageVersionStatus', () {
    // If all API server instances agree on the same encoding storage version, then this field is set to that version. Otherwise this field is left empty. API servers should finish updating its storageVersionStatus entry before serving write operations, so that this field will be in sync with the reality.
    // String commonEncodingVersion
    test('to test the property `commonEncodingVersion`', () async {
      // TODO
    });

    // The latest available observations of the storageVersion's state.
    // List<IoK8sApiApiserverinternalV1alpha1StorageVersionCondition> conditions (default value: const [])
    test('to test the property `conditions`', () async {
      // TODO
    });

    // The reported versions per API server instance.
    // List<IoK8sApiApiserverinternalV1alpha1ServerStorageVersion> storageVersions (default value: const [])
    test('to test the property `storageVersions`', () async {
      // TODO
    });


  });

}
