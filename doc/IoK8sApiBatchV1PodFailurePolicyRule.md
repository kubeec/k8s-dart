# k8s.model.IoK8sApiBatchV1PodFailurePolicyRule

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **String** | Specifies the action taken on a pod failure when the requirements are satisfied. Possible values are: - FailJob: indicates that the pod's job is marked as Failed and all   running pods are terminated. - Ignore: indicates that the counter towards the .backoffLimit is not   incremented and a replacement pod is created. - Count: indicates that the pod is handled in the default way - the   counter towards the .backoffLimit is incremented. Additional values are considered to be added in the future. Clients should react to an unknown action by skipping the rule.   | 
**onExitCodes** | [**IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement**](IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement.md) |  | [optional] 
**onPodConditions** | [**List<IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern>**](IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern.md) | Represents the requirement on the pod conditions. The requirement is represented as a list of pod condition patterns. The requirement is satisfied if at least one pattern matches an actual pod condition. At most 20 elements are allowed. | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


