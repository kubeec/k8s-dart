# k8s.model.IoK8sApiCoreV1ContainerStatus

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**containerID** | **String** | Container's ID in the format '<type>://<container_id>'. | [optional] 
**image** | **String** | The image the container is running. More info: https://kubernetes.io/docs/concepts/containers/images. | 
**imageID** | **String** | ImageID of the container's image. | 
**lastState** | [**IoK8sApiCoreV1ContainerState**](IoK8sApiCoreV1ContainerState.md) |  | [optional] 
**name** | **String** | This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated. | 
**ready** | **bool** | Specifies whether the container has passed its readiness probe. | 
**restartCount** | **int** | The number of times the container has been restarted. | 
**started** | **bool** | Specifies whether the container has passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. Is always true when no startupProbe is defined. | [optional] 
**state** | [**IoK8sApiCoreV1ContainerState**](IoK8sApiCoreV1ContainerState.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


