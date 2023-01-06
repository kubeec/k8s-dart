# k8s.model.IoK8sApiNetworkingV1IPBlock

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cidr** | **String** | CIDR is a string representing the IP Block Valid examples are \"192.168.1.0/24\" or \"2001:db8::/64\" | 
**except** | **BuiltList&lt;String&gt;** | Except is a slice of CIDRs that should not be included within an IP Block Valid examples are \"192.168.1.0/24\" or \"2001:db8::/64\" Except values will be rejected if they are outside the CIDR range | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


