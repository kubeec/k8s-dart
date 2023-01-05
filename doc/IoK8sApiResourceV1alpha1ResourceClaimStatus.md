# k8s.model.IoK8sApiResourceV1alpha1ResourceClaimStatus

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allocation** | [**IoK8sApiResourceV1alpha1AllocationResult**](IoK8sApiResourceV1alpha1AllocationResult.md) |  | [optional] 
**deallocationRequested** | **bool** | DeallocationRequested indicates that a ResourceClaim is to be deallocated.  The driver then must deallocate this claim and reset the field together with clearing the Allocation field.  While DeallocationRequested is set, no new consumers may be added to ReservedFor. | [optional] 
**driverName** | **String** | DriverName is a copy of the driver name from the ResourceClass at the time when allocation started. | [optional] 
**reservedFor** | [**List<IoK8sApiResourceV1alpha1ResourceClaimConsumerReference>**](IoK8sApiResourceV1alpha1ResourceClaimConsumerReference.md) | ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started.  There can be at most 32 such reservations. This may get increased in the future, but not reduced. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


