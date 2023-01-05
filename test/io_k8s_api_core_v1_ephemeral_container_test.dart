//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:k8s/api.dart';
import 'package:test/test.dart';

// tests for IoK8sApiCoreV1EphemeralContainer
void main() {
  // final instance = IoK8sApiCoreV1EphemeralContainer();

  group('test IoK8sApiCoreV1EphemeralContainer', () {
    // Arguments to the entrypoint. The image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
    // List<String> args (default value: const [])
    test('to test the property `args`', () async {
      // TODO
    });

    // Entrypoint array. Not executed within a shell. The image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
    // List<String> command (default value: const [])
    test('to test the property `command`', () async {
      // TODO
    });

    // List of environment variables to set in the container. Cannot be updated.
    // List<IoK8sApiCoreV1EnvVar> env (default value: const [])
    test('to test the property `env`', () async {
      // TODO
    });

    // List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
    // List<IoK8sApiCoreV1EnvFromSource> envFrom (default value: const [])
    test('to test the property `envFrom`', () async {
      // TODO
    });

    // Container image name. More info: https://kubernetes.io/docs/concepts/containers/images
    // String image
    test('to test the property `image`', () async {
      // TODO
    });

    // Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images  
    // String imagePullPolicy
    test('to test the property `imagePullPolicy`', () async {
      // TODO
    });

    // IoK8sApiCoreV1Lifecycle lifecycle
    test('to test the property `lifecycle`', () async {
      // TODO
    });

    // IoK8sApiCoreV1Probe livenessProbe
    test('to test the property `livenessProbe`', () async {
      // TODO
    });

    // Name of the ephemeral container specified as a DNS_LABEL. This name must be unique among all containers, init containers and ephemeral containers.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Ports are not allowed for ephemeral containers.
    // List<IoK8sApiCoreV1ContainerPort> ports (default value: const [])
    test('to test the property `ports`', () async {
      // TODO
    });

    // IoK8sApiCoreV1Probe readinessProbe
    test('to test the property `readinessProbe`', () async {
      // TODO
    });

    // IoK8sApiCoreV1ResourceRequirements resources
    test('to test the property `resources`', () async {
      // TODO
    });

    // IoK8sApiCoreV1SecurityContext securityContext
    test('to test the property `securityContext`', () async {
      // TODO
    });

    // IoK8sApiCoreV1Probe startupProbe
    test('to test the property `startupProbe`', () async {
      // TODO
    });

    // Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
    // bool stdin
    test('to test the property `stdin`', () async {
      // TODO
    });

    // Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
    // bool stdinOnce
    test('to test the property `stdinOnce`', () async {
      // TODO
    });

    // If set, the name of the container from PodSpec that this ephemeral container targets. The ephemeral container will be run in the namespaces (IPC, PID, etc) of this container. If not set then the ephemeral container uses the namespaces configured in the Pod spec.  The container runtime must implement support for this feature. If the runtime does not support namespace targeting then the result of setting this field is undefined.
    // String targetContainerName
    test('to test the property `targetContainerName`', () async {
      // TODO
    });

    // Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
    // String terminationMessagePath
    test('to test the property `terminationMessagePath`', () async {
      // TODO
    });

    // Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.  
    // String terminationMessagePolicy
    test('to test the property `terminationMessagePolicy`', () async {
      // TODO
    });

    // Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
    // bool tty
    test('to test the property `tty`', () async {
      // TODO
    });

    // volumeDevices is the list of block devices to be used by the container.
    // List<IoK8sApiCoreV1VolumeDevice> volumeDevices (default value: const [])
    test('to test the property `volumeDevices`', () async {
      // TODO
    });

    // Pod volumes to mount into the container's filesystem. Subpath mounts are not allowed for ephemeral containers. Cannot be updated.
    // List<IoK8sApiCoreV1VolumeMount> volumeMounts (default value: const [])
    test('to test the property `volumeMounts`', () async {
      // TODO
    });

    // Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
    // String workingDir
    test('to test the property `workingDir`', () async {
      // TODO
    });


  });

}
