# k8s.model.IoK8sApiNetworkingV1IngressLoadBalancerIngress

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | Hostname is set for load-balancer ingress points that are DNS based. | [optional] 
**ip** | **String** | IP is set for load-balancer ingress points that are IP based. | [optional] 
**ports** | [**List<IoK8sApiNetworkingV1IngressPortStatus>**](IoK8sApiNetworkingV1IngressPortStatus.md) | Ports provides information about the ports exposed by this LoadBalancer. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


