# k8s.model.IoK8sApiApiserverinternalV1alpha1StorageVersionCondition

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lastTransitionTime** | [**DateTime**](DateTime.md) | Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers. | [optional] 
**message** | **String** | A human readable message indicating details about the transition. | [optional] 
**observedGeneration** | **int** | If set, this represents the .metadata.generation that the condition was set based upon. | [optional] 
**reason** | **String** | The reason for the condition's last transition. | 
**status** | **String** | Status of the condition, one of True, False, Unknown. | 
**type** | **String** | Type of the condition. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


