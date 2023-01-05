# k8s.model.IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conditions** | [**List<IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition>**](IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition.md) | conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met. | [optional] [default to const []]
**currentMetrics** | [**List<IoK8sApiAutoscalingV2MetricStatus>**](IoK8sApiAutoscalingV2MetricStatus.md) | currentMetrics is the last read state of the metrics used by this autoscaler. | [optional] [default to const []]
**currentReplicas** | **int** | currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler. | [optional] 
**desiredReplicas** | **int** | desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler. | 
**lastScaleTime** | [**DateTime**](DateTime.md) | Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers. | [optional] 
**observedGeneration** | **int** | observedGeneration is the most recent generation observed by this autoscaler. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


