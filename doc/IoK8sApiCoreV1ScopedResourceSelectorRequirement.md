# k8s.model.IoK8sApiCoreV1ScopedResourceSelectorRequirement

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operator_** | **String** | Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.   | 
**scopeName** | **String** | The name of the scope that the selector applies to.   | 
**values** | **BuiltList&lt;String&gt;** | An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


