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

// tests for IoK8sApiCoreV1ResourceRequirements
void main() {
  // final instance = IoK8sApiCoreV1ResourceRequirements();

  group('test IoK8sApiCoreV1ResourceRequirements', () {
    // Claims lists the names of resources, defined in spec.resourceClaims, that are used by this container.  This is an alpha field and requires enabling the DynamicResourceAllocation feature gate.  This field is immutable.
    // List<IoK8sApiCoreV1ResourceClaim> claims (default value: const [])
    test('to test the property `claims`', () async {
      // TODO
    });

    // Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    // Map<String, String> limits (default value: const {})
    test('to test the property `limits`', () async {
      // TODO
    });

    // Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    // Map<String, String> requests (default value: const {})
    test('to test the property `requests`', () async {
      // TODO
    });


  });

}
