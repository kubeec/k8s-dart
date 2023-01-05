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

// tests for IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus
void main() {
  // final instance = IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus();

  group('test IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus', () {
    // IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames acceptedNames
    test('to test the property `acceptedNames`', () async {
      // TODO
    });

    // conditions indicate state for particular aspects of a CustomResourceDefinition
    // List<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionCondition> conditions (default value: const [])
    test('to test the property `conditions`', () async {
      // TODO
    });

    // storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
    // List<String> storedVersions (default value: const [])
    test('to test the property `storedVersions`', () async {
      // TODO
    });


  });

}
