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

// tests for IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec
void main() {
  // final instance = IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec();

  group('test IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec', () {
    // IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion conversion
    test('to test the property `conversion`', () async {
      // TODO
    });

    // group is the API group of the defined custom resource. The custom resources are served under `/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).
    // String group
    test('to test the property `group`', () async {
      // TODO
    });

    // IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames names
    test('to test the property `names`', () async {
      // TODO
    });

    // preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. This field is deprecated in favor of setting `x-preserve-unknown-fields` to true in `spec.versions[*].schema.openAPIV3Schema`. See https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definitions/#field-pruning for details.
    // bool preserveUnknownFields
    test('to test the property `preserveUnknownFields`', () async {
      // TODO
    });

    // scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`.
    // String scope
    test('to test the property `scope`', () async {
      // TODO
    });

    // versions is the list of all API versions of the defined custom resource. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is \"kube-like\", it will sort above non \"kube-like\" version strings, which are ordered lexicographically. \"Kube-like\" versions start with a \"v\", then are followed by a number (the major version), then optionally the string \"alpha\" or \"beta\" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
    // List<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion> versions (default value: const [])
    test('to test the property `versions`', () async {
      // TODO
    });


  });

}
