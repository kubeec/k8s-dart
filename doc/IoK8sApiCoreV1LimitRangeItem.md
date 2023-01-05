# k8s.model.IoK8sApiCoreV1LimitRangeItem

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_** | **Map<String, String>** | Default resource requirement limit value by resource name if resource limit is omitted. | [optional] [default to const {}]
**defaultRequest** | **Map<String, String>** | DefaultRequest is the default resource requirement request value by resource name if resource request is omitted. | [optional] [default to const {}]
**max** | **Map<String, String>** | Max usage constraints on this kind by resource name. | [optional] [default to const {}]
**maxLimitRequestRatio** | **Map<String, String>** | MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource. | [optional] [default to const {}]
**min** | **Map<String, String>** | Min usage constraints on this kind by resource name. | [optional] [default to const {}]
**type** | **String** | Type of resource that this limit applies to. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


