# k8s.model.IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**failurePolicy** | **String** | FailurePolicy defines how to handle failures for the admission policy. Failures can occur from invalid or mis-configured policy definitions or bindings. A policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid if spec.paramRef.name refers to a non-existent resource. Allowed values are Ignore or Fail. Defaults to Fail. | [optional] 
**matchConstraints** | [**IoK8sApiAdmissionregistrationV1alpha1MatchResources**](IoK8sApiAdmissionregistrationV1alpha1MatchResources.md) |  | [optional] 
**paramKind** | [**IoK8sApiAdmissionregistrationV1alpha1ParamKind**](IoK8sApiAdmissionregistrationV1alpha1ParamKind.md) |  | [optional] 
**validations** | [**List<IoK8sApiAdmissionregistrationV1alpha1Validation>**](IoK8sApiAdmissionregistrationV1alpha1Validation.md) | Validations contain CEL expressions which is used to apply the validation. A minimum of one validation is required for a policy definition. Required. | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


