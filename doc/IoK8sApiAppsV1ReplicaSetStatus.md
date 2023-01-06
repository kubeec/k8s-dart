# k8s.model.IoK8sApiAppsV1ReplicaSetStatus

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**availableReplicas** | **int** | The number of available replicas (ready for at least minReadySeconds) for this replica set. | [optional] 
**conditions** | [**BuiltList&lt;IoK8sApiAppsV1ReplicaSetCondition&gt;**](IoK8sApiAppsV1ReplicaSetCondition.md) | Represents the latest available observations of a replica set's current state. | [optional] 
**fullyLabeledReplicas** | **int** | The number of pods that have labels matching the labels of the pod template of the replicaset. | [optional] 
**observedGeneration** | **int** | ObservedGeneration reflects the generation of the most recently observed ReplicaSet. | [optional] 
**readyReplicas** | **int** | readyReplicas is the number of pods targeted by this ReplicaSet with a Ready Condition. | [optional] 
**replicas** | **int** | Replicas is the most recently observed number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


