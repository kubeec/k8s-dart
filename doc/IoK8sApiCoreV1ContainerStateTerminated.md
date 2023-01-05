# k8s.model.IoK8sApiCoreV1ContainerStateTerminated

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**containerID** | **String** | Container's ID in the format '<type>://<container_id>' | [optional] 
**exitCode** | **int** | Exit status from the last termination of the container | 
**finishedAt** | [**DateTime**](DateTime.md) | Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers. | [optional] 
**message** | **String** | Message regarding the last termination of the container | [optional] 
**reason** | **String** | (brief) reason from the last termination of the container | [optional] 
**signal** | **int** | Signal from the last termination of the container | [optional] 
**startedAt** | [**DateTime**](DateTime.md) | Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


