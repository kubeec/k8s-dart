# k8s.model.IoK8sApiAutoscalingV2MetricSpec

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**containerResource** | [**IoK8sApiAutoscalingV2ContainerResourceMetricSource**](IoK8sApiAutoscalingV2ContainerResourceMetricSource.md) |  | [optional] 
**external_** | [**IoK8sApiAutoscalingV2ExternalMetricSource**](IoK8sApiAutoscalingV2ExternalMetricSource.md) |  | [optional] 
**object** | [**IoK8sApiAutoscalingV2ObjectMetricSource**](IoK8sApiAutoscalingV2ObjectMetricSource.md) |  | [optional] 
**pods** | [**IoK8sApiAutoscalingV2PodsMetricSource**](IoK8sApiAutoscalingV2PodsMetricSource.md) |  | [optional] 
**resource** | [**IoK8sApiAutoscalingV2ResourceMetricSource**](IoK8sApiAutoscalingV2ResourceMetricSource.md) |  | [optional] 
**type** | **String** | type is the type of metric source.  It should be one of \"ContainerResource\", \"External\", \"Object\", \"Pods\" or \"Resource\", each mapping to a matching field in the object. Note: \"ContainerResource\" type is available on when the feature-gate HPAContainerMetrics is enabled | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


