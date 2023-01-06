# k8s.model.IoK8sApiCoreV1NodeSystemInfo

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**architecture** | **String** | The Architecture reported by the node | 
**bootID** | **String** | Boot ID reported by the node. | 
**containerRuntimeVersion** | **String** | ContainerRuntime Version reported by the node through runtime remote API (e.g. containerd://1.4.2). | 
**kernelVersion** | **String** | Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64). | 
**kubeProxyVersion** | **String** | KubeProxy Version reported by the node. | 
**kubeletVersion** | **String** | Kubelet Version reported by the node. | 
**machineID** | **String** | MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: http://man7.org/linux/man-pages/man5/machine-id.5.html | 
**operatingSystem** | **String** | The Operating System reported by the node | 
**osImage** | **String** | OS Image reported by the node from /etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)). | 
**systemUUID** | **String** | SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


