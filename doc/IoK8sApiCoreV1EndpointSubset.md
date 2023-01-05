# k8s.model.IoK8sApiCoreV1EndpointSubset

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addresses** | [**List<IoK8sApiCoreV1EndpointAddress>**](IoK8sApiCoreV1EndpointAddress.md) | IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize. | [optional] [default to const []]
**notReadyAddresses** | [**List<IoK8sApiCoreV1EndpointAddress>**](IoK8sApiCoreV1EndpointAddress.md) | IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check. | [optional] [default to const []]
**ports** | [**List<IoK8sApiCoreV1EndpointPort>**](IoK8sApiCoreV1EndpointPort.md) | Port numbers available on the related IP addresses. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


