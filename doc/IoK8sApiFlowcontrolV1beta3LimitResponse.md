# k8s.model.IoK8sApiFlowcontrolV1beta3LimitResponse

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**queuing** | [**IoK8sApiFlowcontrolV1beta3QueuingConfiguration**](IoK8sApiFlowcontrolV1beta3QueuingConfiguration.md) |  | [optional] 
**type** | **String** | `type` is \"Queue\" or \"Reject\". \"Queue\" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. \"Reject\" means that requests that can not be executed upon arrival are rejected. Required. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


