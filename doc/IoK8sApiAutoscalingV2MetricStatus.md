# k8s.model.IoK8sApiAutoscalingV2MetricStatus

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**containerResource** | [**IoK8sApiAutoscalingV2ContainerResourceMetricStatus**](IoK8sApiAutoscalingV2ContainerResourceMetricStatus.md) |  | [optional] 
**external_** | [**IoK8sApiAutoscalingV2ExternalMetricStatus**](IoK8sApiAutoscalingV2ExternalMetricStatus.md) |  | [optional] 
**object** | [**IoK8sApiAutoscalingV2ObjectMetricStatus**](IoK8sApiAutoscalingV2ObjectMetricStatus.md) |  | [optional] 
**pods** | [**IoK8sApiAutoscalingV2PodsMetricStatus**](IoK8sApiAutoscalingV2PodsMetricStatus.md) |  | [optional] 
**resource** | [**IoK8sApiAutoscalingV2ResourceMetricStatus**](IoK8sApiAutoscalingV2ResourceMetricStatus.md) |  | [optional] 
**type** | **String** | type is the type of metric source.  It will be one of \"ContainerResource\", \"External\", \"Object\", \"Pods\" or \"Resource\", each corresponds to a matching field in the object. Note: \"ContainerResource\" type is available on when the feature-gate HPAContainerMetrics is enabled | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


