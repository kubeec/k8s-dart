# k8s.model.IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apiGroups** | **List<String>** | APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required. | [optional] [default to const []]
**apiVersions** | **List<String>** | APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required. | [optional] [default to const []]
**operations** | **List<String>** | Operations is the operations the admission hook cares about - CREATE, UPDATE, DELETE, CONNECT or * for all of those operations and any future admission operations that are added. If '*' is present, the length of the slice must be one. Required. | [optional] [default to const []]
**resourceNames** | **List<String>** | ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed. | [optional] [default to const []]
**resources** | **List<String>** | Resources is a list of resources this rule applies to.  For example: 'pods' means pods. 'pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/_*' means all subresources of pods. '*_/scale' means all scale subresources. '*_/_*' means all resources and their subresources.  If wildcard is present, the validation rule will ensure resources do not overlap with each other.  Depending on the enclosing object, subresources might not be allowed. Required. | [optional] [default to const []]
**scope** | **String** | scope specifies the scope of this rule. Valid values are \"Cluster\", \"Namespaced\", and \"*\" \"Cluster\" means that only cluster-scoped resources will match this rule. Namespace API objects are cluster-scoped. \"Namespaced\" means that only namespaced resources will match this rule. \"*\" means that there are no scope restrictions. Subresources match the scope of their parent resource. Default is \"*\". | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


