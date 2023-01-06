# k8s.model.IoK8sApiNetworkingV1alpha1ClusterCIDRSpec

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ipv4** | **String** | IPv4 defines an IPv4 IP block in CIDR notation(e.g. \"10.0.0.0/8\"). At least one of IPv4 and IPv6 must be specified. This field is immutable. | [optional] 
**ipv6** | **String** | IPv6 defines an IPv6 IP block in CIDR notation(e.g. \"2001:db8::/64\"). At least one of IPv4 and IPv6 must be specified. This field is immutable. | [optional] 
**nodeSelector** | [**IoK8sApiCoreV1NodeSelector**](IoK8sApiCoreV1NodeSelector.md) |  | [optional] 
**perNodeHostBits** | **int** | PerNodeHostBits defines the number of host bits to be configured per node. A subnet mask determines how much of the address is used for network bits and host bits. For example an IPv4 address of 192.168.0.0/24, splits the address into 24 bits for the network portion and 8 bits for the host portion. To allocate 256 IPs, set this field to 8 (a /24 mask for IPv4 or a /120 for IPv6). Minimum value is 4 (16 IPs). This field is immutable. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


