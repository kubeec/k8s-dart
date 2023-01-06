# k8s.model.IoK8sApiFlowcontrolV1beta3FlowSchemaCondition

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lastTransitionTime** | [**DateTime**](DateTime.md) | Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers. | [optional] 
**message** | **String** | `message` is a human-readable message indicating details about last transition. | [optional] 
**reason** | **String** | `reason` is a unique, one-word, CamelCase reason for the condition's last transition. | [optional] 
**status** | **String** | `status` is the status of the condition. Can be True, False, Unknown. Required. | [optional] 
**type** | **String** | `type` is the type of the condition. Required. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


