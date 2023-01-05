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

// tests for IoK8sApiCoreV1PodAffinityTerm
void main() {
  // final instance = IoK8sApiCoreV1PodAffinityTerm();

  group('test IoK8sApiCoreV1PodAffinityTerm', () {
    // IoK8sApimachineryPkgApisMetaV1LabelSelector labelSelector
    test('to test the property `labelSelector`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1LabelSelector namespaceSelector
    test('to test the property `namespaceSelector`', () async {
      // TODO
    });

    // namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".
    // List<String> namespaces (default value: const [])
    test('to test the property `namespaces`', () async {
      // TODO
    });

    // This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.
    // String topologyKey
    test('to test the property `topologyKey`', () async {
      // TODO
    });


  });

}
