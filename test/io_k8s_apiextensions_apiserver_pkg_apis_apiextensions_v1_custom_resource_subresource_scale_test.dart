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

// tests for IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale
void main() {
  // final instance = IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale();

  group('test IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale', () {
    // labelSelectorPath defines the JSON path inside of a custom resource that corresponds to Scale `status.selector`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status` or `.spec`. Must be set to work with HorizontalPodAutoscaler. The field pointed by this JSON path must be a string field (not a complex selector struct) which contains a serialized label selector in string form. More info: https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the custom resource, the `status.selector` value in the `/scale` subresource will default to the empty string.
    // String labelSelectorPath
    test('to test the property `labelSelectorPath`', () async {
      // TODO
    });

    // specReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `spec.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.spec`. If there is no value under the given path in the custom resource, the `/scale` subresource will return an error on GET.
    // String specReplicasPath
    test('to test the property `specReplicasPath`', () async {
      // TODO
    });

    // statusReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `status.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status`. If there is no value under the given path in the custom resource, the `status.replicas` value in the `/scale` subresource will default to 0.
    // String statusReplicasPath
    test('to test the property `statusReplicasPath`', () async {
      // TODO
    });


  });

}
