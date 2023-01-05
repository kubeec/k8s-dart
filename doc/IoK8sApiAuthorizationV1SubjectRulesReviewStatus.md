# k8s.model.IoK8sApiAuthorizationV1SubjectRulesReviewStatus

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**evaluationError** | **String** | EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules and/or NonResourceRules may be incomplete. | [optional] 
**incomplete** | **bool** | Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation. | 
**nonResourceRules** | [**List<IoK8sApiAuthorizationV1NonResourceRule>**](IoK8sApiAuthorizationV1NonResourceRule.md) | NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete. | [default to const []]
**resourceRules** | [**List<IoK8sApiAuthorizationV1ResourceRule>**](IoK8sApiAuthorizationV1ResourceRule.md) | ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete. | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


