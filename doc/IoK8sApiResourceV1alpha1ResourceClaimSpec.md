# k8s.model.IoK8sApiResourceV1alpha1ResourceClaimSpec

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allocationMode** | **String** | Allocation can start immediately or when a Pod wants to use the resource. \"WaitForFirstConsumer\" is the default. | [optional] 
**parametersRef** | [**IoK8sApiResourceV1alpha1ResourceClaimParametersReference**](IoK8sApiResourceV1alpha1ResourceClaimParametersReference.md) |  | [optional] 
**resourceClassName** | **String** | ResourceClassName references the driver and additional parameters via the name of a ResourceClass that was created as part of the driver deployment. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


