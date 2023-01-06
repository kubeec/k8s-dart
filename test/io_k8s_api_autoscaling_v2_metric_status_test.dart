import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAutoscalingV2MetricStatus
void main() {
  final instance = IoK8sApiAutoscalingV2MetricStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAutoscalingV2MetricStatus, () {
    // IoK8sApiAutoscalingV2ContainerResourceMetricStatus containerResource
    test('to test the property `containerResource`', () async {
      // TODO
    });

    // IoK8sApiAutoscalingV2ExternalMetricStatus external_
    test('to test the property `external_`', () async {
      // TODO
    });

    // IoK8sApiAutoscalingV2ObjectMetricStatus object
    test('to test the property `object`', () async {
      // TODO
    });

    // IoK8sApiAutoscalingV2PodsMetricStatus pods
    test('to test the property `pods`', () async {
      // TODO
    });

    // IoK8sApiAutoscalingV2ResourceMetricStatus resource
    test('to test the property `resource`', () async {
      // TODO
    });

    // type is the type of metric source.  It will be one of \"ContainerResource\", \"External\", \"Object\", \"Pods\" or \"Resource\", each corresponds to a matching field in the object. Note: \"ContainerResource\" type is available on when the feature-gate HPAContainerMetrics is enabled
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
