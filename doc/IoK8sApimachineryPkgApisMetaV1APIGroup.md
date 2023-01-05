# k8s.model.IoK8sApimachineryPkgApisMetaV1APIGroup

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apiVersion** | **String** | APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources | [optional] 
**kind** | **String** | Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds | [optional] 
**name** | **String** | name is the name of the group. | 
**preferredVersion** | [**IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery**](IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery.md) |  | [optional] 
**serverAddressByClientCIDRs** | [**List<IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR>**](IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR.md) | a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP. | [optional] [default to const []]
**versions** | [**List<IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery>**](IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery.md) | versions are the versions supported in this group. | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


