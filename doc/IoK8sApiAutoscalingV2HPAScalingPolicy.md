# k8s.model.IoK8sApiAutoscalingV2HPAScalingPolicy

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**periodSeconds** | **int** | PeriodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min). | 
**type** | **String** | Type is used to specify the scaling policy. | 
**value** | **int** | Value contains the amount of change which is permitted by the policy. It must be greater than zero | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


