# k8s.model.IoK8sApiAppsV1DaemonSetStatus

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collisionCount** | **int** | Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision. | [optional] 
**conditions** | [**List<IoK8sApiAppsV1DaemonSetCondition>**](IoK8sApiAppsV1DaemonSetCondition.md) | Represents the latest available observations of a DaemonSet's current state. | [optional] [default to const []]
**currentNumberScheduled** | **int** | The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/ | 
**desiredNumberScheduled** | **int** | The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/ | 
**numberAvailable** | **int** | The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds) | [optional] 
**numberMisscheduled** | **int** | The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/ | 
**numberReady** | **int** | numberReady is the number of nodes that should be running the daemon pod and have one or more of the daemon pod running with a Ready Condition. | 
**numberUnavailable** | **int** | The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds) | [optional] 
**observedGeneration** | **int** | The most recent generation observed by the daemon set controller. | [optional] 
**updatedNumberScheduled** | **int** | The total number of nodes that are running updated daemon pod | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


