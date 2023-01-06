# k8s.model.IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationSpec

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**limited** | [**IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration**](IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration.md) |  | [optional] 
**type** | **String** | `type` indicates whether this priority level is subject to limitation on request execution.  A value of `\"Exempt\"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `\"Limited\"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


