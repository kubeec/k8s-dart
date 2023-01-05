# k8s.model.IoK8sApiBatchV1JobCondition

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lastProbeTime** | [**DateTime**](DateTime.md) | Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers. | [optional] 
**lastTransitionTime** | [**DateTime**](DateTime.md) | Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers. | [optional] 
**message** | **String** | Human readable message indicating details about last transition. | [optional] 
**reason** | **String** | (brief) reason for the condition's last transition. | [optional] 
**status** | **String** | Status of the condition, one of True, False, Unknown. | 
**type** | **String** | Type of job condition, Complete or Failed. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


