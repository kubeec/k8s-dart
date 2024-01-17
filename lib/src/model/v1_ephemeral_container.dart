//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_volume_device.dart';
import 'package:k8s/src/model/v1_container_resize_policy.dart';
import 'package:k8s/src/model/v1_container_port.dart';
import 'package:k8s/src/model/v1_env_from_source.dart';
import 'package:k8s/src/model/v1_env_var.dart';
import 'package:k8s/src/model/v1_volume_mount.dart';
import 'package:k8s/src/model/v1_resource_requirements.dart';
import 'package:k8s/src/model/v1_security_context.dart';
import 'package:k8s/src/model/v1_probe.dart';
import 'package:k8s/src/model/v1_lifecycle.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_ephemeral_container.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1EphemeralContainer {
  /// Returns a new [V1EphemeralContainer] instance.
  V1EphemeralContainer({

     this.args,

     this.command,

     this.env,

     this.envFrom,

     this.image,

     this.imagePullPolicy,

     this.lifecycle,

     this.livenessProbe,

    required  this.name,

     this.ports,

     this.readinessProbe,

     this.resizePolicy,

     this.resources,

     this.securityContext,

     this.startupProbe,

     this.stdin,

     this.stdinOnce,

     this.targetContainerName,

     this.terminationMessagePath,

     this.terminationMessagePolicy,

     this.tty,

     this.volumeDevices,

     this.volumeMounts,

     this.workingDir,
  });

      /// Arguments to the entrypoint. The image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  @JsonKey(
    
    name: r'args',
    required: false,
    includeIfNull: false
  )


  final List<String>? args;



      /// Entrypoint array. Not executed within a shell. The image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  @JsonKey(
    
    name: r'command',
    required: false,
    includeIfNull: false
  )


  final List<String>? command;



      /// List of environment variables to set in the container. Cannot be updated.
  @JsonKey(
    
    name: r'env',
    required: false,
    includeIfNull: false
  )


  final List<V1EnvVar>? env;



      /// List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
  @JsonKey(
    
    name: r'envFrom',
    required: false,
    includeIfNull: false
  )


  final List<V1EnvFromSource>? envFrom;



      /// Container image name. More info: https://kubernetes.io/docs/concepts/containers/images
  @JsonKey(
    
    name: r'image',
    required: false,
    includeIfNull: false
  )


  final String? image;



      /// Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images
  @JsonKey(
    
    name: r'imagePullPolicy',
    required: false,
    includeIfNull: false
  )


  final String? imagePullPolicy;



  @JsonKey(
    
    name: r'lifecycle',
    required: false,
    includeIfNull: false
  )


  final V1Lifecycle? lifecycle;



  @JsonKey(
    
    name: r'livenessProbe',
    required: false,
    includeIfNull: false
  )


  final V1Probe? livenessProbe;



      /// Name of the ephemeral container specified as a DNS_LABEL. This name must be unique among all containers, init containers and ephemeral containers.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



      /// Ports are not allowed for ephemeral containers.
  @JsonKey(
    
    name: r'ports',
    required: false,
    includeIfNull: false
  )


  final List<V1ContainerPort>? ports;



  @JsonKey(
    
    name: r'readinessProbe',
    required: false,
    includeIfNull: false
  )


  final V1Probe? readinessProbe;



      /// Resources resize policy for the container.
  @JsonKey(
    
    name: r'resizePolicy',
    required: false,
    includeIfNull: false
  )


  final List<V1ContainerResizePolicy>? resizePolicy;



  @JsonKey(
    
    name: r'resources',
    required: false,
    includeIfNull: false
  )


  final V1ResourceRequirements? resources;



  @JsonKey(
    
    name: r'securityContext',
    required: false,
    includeIfNull: false
  )


  final V1SecurityContext? securityContext;



  @JsonKey(
    
    name: r'startupProbe',
    required: false,
    includeIfNull: false
  )


  final V1Probe? startupProbe;



      /// Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
  @JsonKey(
    
    name: r'stdin',
    required: false,
    includeIfNull: false
  )


  final bool? stdin;



      /// Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
  @JsonKey(
    
    name: r'stdinOnce',
    required: false,
    includeIfNull: false
  )


  final bool? stdinOnce;



      /// If set, the name of the container from PodSpec that this ephemeral container targets. The ephemeral container will be run in the namespaces (IPC, PID, etc) of this container. If not set then the ephemeral container uses the namespaces configured in the Pod spec.  The container runtime must implement support for this feature. If the runtime does not support namespace targeting then the result of setting this field is undefined.
  @JsonKey(
    
    name: r'targetContainerName',
    required: false,
    includeIfNull: false
  )


  final String? targetContainerName;



      /// Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
  @JsonKey(
    
    name: r'terminationMessagePath',
    required: false,
    includeIfNull: false
  )


  final String? terminationMessagePath;



      /// Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
  @JsonKey(
    
    name: r'terminationMessagePolicy',
    required: false,
    includeIfNull: false
  )


  final String? terminationMessagePolicy;



      /// Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
  @JsonKey(
    
    name: r'tty',
    required: false,
    includeIfNull: false
  )


  final bool? tty;



      /// volumeDevices is the list of block devices to be used by the container.
  @JsonKey(
    
    name: r'volumeDevices',
    required: false,
    includeIfNull: false
  )


  final List<V1VolumeDevice>? volumeDevices;



      /// Pod volumes to mount into the container's filesystem. Subpath mounts are not allowed for ephemeral containers. Cannot be updated.
  @JsonKey(
    
    name: r'volumeMounts',
    required: false,
    includeIfNull: false
  )


  final List<V1VolumeMount>? volumeMounts;



      /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
  @JsonKey(
    
    name: r'workingDir',
    required: false,
    includeIfNull: false
  )


  final String? workingDir;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1EphemeralContainer &&
     other.args == args &&
     other.command == command &&
     other.env == env &&
     other.envFrom == envFrom &&
     other.image == image &&
     other.imagePullPolicy == imagePullPolicy &&
     other.lifecycle == lifecycle &&
     other.livenessProbe == livenessProbe &&
     other.name == name &&
     other.ports == ports &&
     other.readinessProbe == readinessProbe &&
     other.resizePolicy == resizePolicy &&
     other.resources == resources &&
     other.securityContext == securityContext &&
     other.startupProbe == startupProbe &&
     other.stdin == stdin &&
     other.stdinOnce == stdinOnce &&
     other.targetContainerName == targetContainerName &&
     other.terminationMessagePath == terminationMessagePath &&
     other.terminationMessagePolicy == terminationMessagePolicy &&
     other.tty == tty &&
     other.volumeDevices == volumeDevices &&
     other.volumeMounts == volumeMounts &&
     other.workingDir == workingDir;

  @override
  int get hashCode =>
    args.hashCode +
    command.hashCode +
    env.hashCode +
    envFrom.hashCode +
    image.hashCode +
    imagePullPolicy.hashCode +
    lifecycle.hashCode +
    livenessProbe.hashCode +
    name.hashCode +
    ports.hashCode +
    readinessProbe.hashCode +
    resizePolicy.hashCode +
    resources.hashCode +
    securityContext.hashCode +
    startupProbe.hashCode +
    stdin.hashCode +
    stdinOnce.hashCode +
    targetContainerName.hashCode +
    terminationMessagePath.hashCode +
    terminationMessagePolicy.hashCode +
    tty.hashCode +
    volumeDevices.hashCode +
    volumeMounts.hashCode +
    workingDir.hashCode;

  factory V1EphemeralContainer.fromJson(Map<String, dynamic> json) => _$V1EphemeralContainerFromJson(json);

  Map<String, dynamic> toJson() => _$V1EphemeralContainerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

