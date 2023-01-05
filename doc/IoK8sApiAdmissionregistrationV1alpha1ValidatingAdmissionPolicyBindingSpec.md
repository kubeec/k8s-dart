# k8s.model.IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**matchResources** | [**IoK8sApiAdmissionregistrationV1alpha1MatchResources**](IoK8sApiAdmissionregistrationV1alpha1MatchResources.md) |  | [optional] 
**paramRef** | [**IoK8sApiAdmissionregistrationV1alpha1ParamRef**](IoK8sApiAdmissionregistrationV1alpha1ParamRef.md) |  | [optional] 
**policyName** | **String** | PolicyName references a ValidatingAdmissionPolicy name which the ValidatingAdmissionPolicyBinding binds to. If the referenced resource does not exist, this binding is considered invalid and will be ignored Required. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


