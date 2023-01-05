# k8s.model.IoK8sApiRbacV1PolicyRule

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apiGroups** | **List<String>** | APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed. \"\" represents the core API group and \"*\" represents all API groups. | [optional] [default to const []]
**nonResourceURLs** | **List<String>** | NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as \"pods\" or \"secrets\") or non-resource URL paths (such as \"/api\"),  but not both. | [optional] [default to const []]
**resourceNames** | **List<String>** | ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed. | [optional] [default to const []]
**resources** | **List<String>** | Resources is a list of resources this rule applies to. '*' represents all resources. | [optional] [default to const []]
**verbs** | **List<String>** | Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. '*' represents all verbs. | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


