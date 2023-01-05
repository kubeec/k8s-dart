# k8s.model.IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nonResourceRules** | [**List<IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule>**](IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule.md) | `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL. | [optional] [default to const []]
**resourceRules** | [**List<IoK8sApiFlowcontrolV1beta2ResourcePolicyRule>**](IoK8sApiFlowcontrolV1beta2ResourcePolicyRule.md) | `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty. | [optional] [default to const []]
**subjects** | [**List<IoK8sApiFlowcontrolV1beta2Subject>**](IoK8sApiFlowcontrolV1beta2Subject.md) | subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required. | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


