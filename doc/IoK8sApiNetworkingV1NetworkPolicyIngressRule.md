# k8s.model.IoK8sApiNetworkingV1NetworkPolicyIngressRule

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | [**List<IoK8sApiNetworkingV1NetworkPolicyPeer>**](IoK8sApiNetworkingV1NetworkPolicyPeer.md) | List of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list. | [optional] [default to const []]
**ports** | [**List<IoK8sApiNetworkingV1NetworkPolicyPort>**](IoK8sApiNetworkingV1NetworkPolicyPort.md) | List of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


