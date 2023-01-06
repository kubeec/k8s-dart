# k8s.model.IoK8sApiCoreV1LoadBalancerIngress

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers) | [optional] 
**ip** | **String** | IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers) | [optional] 
**ports** | [**BuiltList&lt;IoK8sApiCoreV1PortStatus&gt;**](IoK8sApiCoreV1PortStatus.md) | Ports is a list of records of service ports If used, every port defined in the service should have an entry in it | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


