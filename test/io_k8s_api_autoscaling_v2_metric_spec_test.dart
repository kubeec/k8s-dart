import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAutoscalingV2MetricSpec
void main() {
  final instance = IoK8sApiAutoscalingV2MetricSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAutoscalingV2MetricSpec, () {
    // IoK8sApiAutoscalingV2ContainerResourceMetricSource containerResource
    test('to test the property `containerResource`', () async {
      // TODO
    });

    // IoK8sApiAutoscalingV2ExternalMetricSource external_
    test('to test the property `external_`', () async {
      // TODO
    });

    // IoK8sApiAutoscalingV2ObjectMetricSource object
    test('to test the property `object`', () async {
      // TODO
    });

    // IoK8sApiAutoscalingV2PodsMetricSource pods
    test('to test the property `pods`', () async {
      // TODO
    });

    // IoK8sApiAutoscalingV2ResourceMetricSource resource
    test('to test the property `resource`', () async {
      // TODO
    });

    // type is the type of metric source.  It should be one of \"ContainerResource\", \"External\", \"Object\", \"Pods\" or \"Resource\", each mapping to a matching field in the object. Note: \"ContainerResource\" type is available on when the feature-gate HPAContainerMetrics is enabled
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
