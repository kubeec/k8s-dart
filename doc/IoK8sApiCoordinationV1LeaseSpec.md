# k8s.model.IoK8sApiCoordinationV1LeaseSpec

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**acquireTime** | [**DateTime**](DateTime.md) | MicroTime is version of Time with microsecond level precision. | [optional] 
**holderIdentity** | **String** | holderIdentity contains the identity of the holder of a current lease. | [optional] 
**leaseDurationSeconds** | **int** | leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime. | [optional] 
**leaseTransitions** | **int** | leaseTransitions is the number of transitions of a lease between holders. | [optional] 
**renewTime** | [**DateTime**](DateTime.md) | MicroTime is version of Time with microsecond level precision. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


