# k8s.model.IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lastTransitionTime** | [**DateTime**](DateTime.md) | Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers. | [optional] 
**message** | **String** | message is a human-readable explanation containing details about the transition | [optional] 
**reason** | **String** | reason is the reason for the condition's last transition. | [optional] 
**status** | **String** | status is the status of the condition (True, False, Unknown) | 
**type** | **String** | type describes the current condition | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


