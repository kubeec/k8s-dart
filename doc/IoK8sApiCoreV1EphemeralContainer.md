# k8s.model.IoK8sApiCoreV1EphemeralContainer

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**args** | **List<String>** | Arguments to the entrypoint. The image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell | [optional] [default to const []]
**command** | **List<String>** | Entrypoint array. Not executed within a shell. The image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell | [optional] [default to const []]
**env** | [**List<IoK8sApiCoreV1EnvVar>**](IoK8sApiCoreV1EnvVar.md) | List of environment variables to set in the container. Cannot be updated. | [optional] [default to const []]
**envFrom** | [**List<IoK8sApiCoreV1EnvFromSource>**](IoK8sApiCoreV1EnvFromSource.md) | List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated. | [optional] [default to const []]
**image** | **String** | Container image name. More info: https://kubernetes.io/docs/concepts/containers/images | [optional] 
**imagePullPolicy** | **String** | Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images   | [optional] 
**lifecycle** | [**IoK8sApiCoreV1Lifecycle**](IoK8sApiCoreV1Lifecycle.md) |  | [optional] 
**livenessProbe** | [**IoK8sApiCoreV1Probe**](IoK8sApiCoreV1Probe.md) |  | [optional] 
**name** | **String** | Name of the ephemeral container specified as a DNS_LABEL. This name must be unique among all containers, init containers and ephemeral containers. | 
**ports** | [**List<IoK8sApiCoreV1ContainerPort>**](IoK8sApiCoreV1ContainerPort.md) | Ports are not allowed for ephemeral containers. | [optional] [default to const []]
**readinessProbe** | [**IoK8sApiCoreV1Probe**](IoK8sApiCoreV1Probe.md) |  | [optional] 
**resources** | [**IoK8sApiCoreV1ResourceRequirements**](IoK8sApiCoreV1ResourceRequirements.md) |  | [optional] 
**securityContext** | [**IoK8sApiCoreV1SecurityContext**](IoK8sApiCoreV1SecurityContext.md) |  | [optional] 
**startupProbe** | [**IoK8sApiCoreV1Probe**](IoK8sApiCoreV1Probe.md) |  | [optional] 
**stdin** | **bool** | Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false. | [optional] 
**stdinOnce** | **bool** | Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false | [optional] 
**targetContainerName** | **String** | If set, the name of the container from PodSpec that this ephemeral container targets. The ephemeral container will be run in the namespaces (IPC, PID, etc) of this container. If not set then the ephemeral container uses the namespaces configured in the Pod spec.  The container runtime must implement support for this feature. If the runtime does not support namespace targeting then the result of setting this field is undefined. | [optional] 
**terminationMessagePath** | **String** | Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated. | [optional] 
**terminationMessagePolicy** | **String** | Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.   | [optional] 
**tty** | **bool** | Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false. | [optional] 
**volumeDevices** | [**List<IoK8sApiCoreV1VolumeDevice>**](IoK8sApiCoreV1VolumeDevice.md) | volumeDevices is the list of block devices to be used by the container. | [optional] [default to const []]
**volumeMounts** | [**List<IoK8sApiCoreV1VolumeMount>**](IoK8sApiCoreV1VolumeMount.md) | Pod volumes to mount into the container's filesystem. Subpath mounts are not allowed for ephemeral containers. Cannot be updated. | [optional] [default to const []]
**workingDir** | **String** | Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


