import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale
void main() {
  final instance = IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScaleBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale, () {
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
