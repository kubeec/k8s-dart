# k8s.model.IoK8sApiCoreV1ReplicationControllerStatus

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**availableReplicas** | **int** | The number of available replicas (ready for at least minReadySeconds) for this replication controller. | [optional] 
**conditions** | [**List<IoK8sApiCoreV1ReplicationControllerCondition>**](IoK8sApiCoreV1ReplicationControllerCondition.md) | Represents the latest available observations of a replication controller's current state. | [optional] [default to const []]
**fullyLabeledReplicas** | **int** | The number of pods that have labels matching the labels of the pod template of the replication controller. | [optional] 
**observedGeneration** | **int** | ObservedGeneration reflects the generation of the most recently observed replication controller. | [optional] 
**readyReplicas** | **int** | The number of ready replicas for this replication controller. | [optional] 
**replicas** | **int** | Replicas is the most recently observed number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


