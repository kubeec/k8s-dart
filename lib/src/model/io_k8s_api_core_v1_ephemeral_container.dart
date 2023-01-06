//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_security_context.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_lifecycle.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_volume_device.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_env_var.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_container_port.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_volume_mount.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_probe.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_resource_requirements.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_env_from_source.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_ephemeral_container.g.dart';

/// An EphemeralContainer is a temporary container that you may add to an existing Pod for user-initiated activities such as debugging. Ephemeral containers have no resource or scheduling guarantees, and they will not be restarted when they exit or when a Pod is removed or restarted. The kubelet may evict a Pod if an ephemeral container causes the Pod to exceed its resource allocation.  To add an ephemeral container, use the ephemeralcontainers subresource of an existing Pod. Ephemeral containers may not be removed or restarted.
///
/// Properties:
/// * [args] - Arguments to the entrypoint. The image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
/// * [command] - Entrypoint array. Not executed within a shell. The image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
/// * [env] - List of environment variables to set in the container. Cannot be updated.
/// * [envFrom] - List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
/// * [image] - Container image name. More info: https://kubernetes.io/docs/concepts/containers/images
/// * [imagePullPolicy] - Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images  
/// * [lifecycle] 
/// * [livenessProbe] 
/// * [name] - Name of the ephemeral container specified as a DNS_LABEL. This name must be unique among all containers, init containers and ephemeral containers.
/// * [ports] - Ports are not allowed for ephemeral containers.
/// * [readinessProbe] 
/// * [resources] 
/// * [securityContext] 
/// * [startupProbe] 
/// * [stdin] - Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
/// * [stdinOnce] - Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
/// * [targetContainerName] - If set, the name of the container from PodSpec that this ephemeral container targets. The ephemeral container will be run in the namespaces (IPC, PID, etc) of this container. If not set then the ephemeral container uses the namespaces configured in the Pod spec.  The container runtime must implement support for this feature. If the runtime does not support namespace targeting then the result of setting this field is undefined.
/// * [terminationMessagePath] - Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
/// * [terminationMessagePolicy] - Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.  
/// * [tty] - Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
/// * [volumeDevices] - volumeDevices is the list of block devices to be used by the container.
/// * [volumeMounts] - Pod volumes to mount into the container's filesystem. Subpath mounts are not allowed for ephemeral containers. Cannot be updated.
/// * [workingDir] - Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
@BuiltValue()
abstract class IoK8sApiCoreV1EphemeralContainer implements Built<IoK8sApiCoreV1EphemeralContainer, IoK8sApiCoreV1EphemeralContainerBuilder> {
  /// Arguments to the entrypoint. The image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  @BuiltValueField(wireName: r'args')
  BuiltList<String>? get args;

  /// Entrypoint array. Not executed within a shell. The image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  @BuiltValueField(wireName: r'command')
  BuiltList<String>? get command;

  /// List of environment variables to set in the container. Cannot be updated.
  @BuiltValueField(wireName: r'env')
  BuiltList<IoK8sApiCoreV1EnvVar>? get env;

  /// List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
  @BuiltValueField(wireName: r'envFrom')
  BuiltList<IoK8sApiCoreV1EnvFromSource>? get envFrom;

  /// Container image name. More info: https://kubernetes.io/docs/concepts/containers/images
  @BuiltValueField(wireName: r'image')
  String? get image;

  /// Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images  
  @BuiltValueField(wireName: r'imagePullPolicy')
  String? get imagePullPolicy;

  @BuiltValueField(wireName: r'lifecycle')
  IoK8sApiCoreV1Lifecycle? get lifecycle;

  @BuiltValueField(wireName: r'livenessProbe')
  IoK8sApiCoreV1Probe? get livenessProbe;

  /// Name of the ephemeral container specified as a DNS_LABEL. This name must be unique among all containers, init containers and ephemeral containers.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Ports are not allowed for ephemeral containers.
  @BuiltValueField(wireName: r'ports')
  BuiltList<IoK8sApiCoreV1ContainerPort>? get ports;

  @BuiltValueField(wireName: r'readinessProbe')
  IoK8sApiCoreV1Probe? get readinessProbe;

  @BuiltValueField(wireName: r'resources')
  IoK8sApiCoreV1ResourceRequirements? get resources;

  @BuiltValueField(wireName: r'securityContext')
  IoK8sApiCoreV1SecurityContext? get securityContext;

  @BuiltValueField(wireName: r'startupProbe')
  IoK8sApiCoreV1Probe? get startupProbe;

  /// Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
  @BuiltValueField(wireName: r'stdin')
  bool? get stdin;

  /// Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
  @BuiltValueField(wireName: r'stdinOnce')
  bool? get stdinOnce;

  /// If set, the name of the container from PodSpec that this ephemeral container targets. The ephemeral container will be run in the namespaces (IPC, PID, etc) of this container. If not set then the ephemeral container uses the namespaces configured in the Pod spec.  The container runtime must implement support for this feature. If the runtime does not support namespace targeting then the result of setting this field is undefined.
  @BuiltValueField(wireName: r'targetContainerName')
  String? get targetContainerName;

  /// Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
  @BuiltValueField(wireName: r'terminationMessagePath')
  String? get terminationMessagePath;

  /// Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.  
  @BuiltValueField(wireName: r'terminationMessagePolicy')
  String? get terminationMessagePolicy;

  /// Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
  @BuiltValueField(wireName: r'tty')
  bool? get tty;

  /// volumeDevices is the list of block devices to be used by the container.
  @BuiltValueField(wireName: r'volumeDevices')
  BuiltList<IoK8sApiCoreV1VolumeDevice>? get volumeDevices;

  /// Pod volumes to mount into the container's filesystem. Subpath mounts are not allowed for ephemeral containers. Cannot be updated.
  @BuiltValueField(wireName: r'volumeMounts')
  BuiltList<IoK8sApiCoreV1VolumeMount>? get volumeMounts;

  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
  @BuiltValueField(wireName: r'workingDir')
  String? get workingDir;

  IoK8sApiCoreV1EphemeralContainer._();

  factory IoK8sApiCoreV1EphemeralContainer([void updates(IoK8sApiCoreV1EphemeralContainerBuilder b)]) = _$IoK8sApiCoreV1EphemeralContainer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1EphemeralContainerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1EphemeralContainer> get serializer => _$IoK8sApiCoreV1EphemeralContainerSerializer();
}

class _$IoK8sApiCoreV1EphemeralContainerSerializer implements PrimitiveSerializer<IoK8sApiCoreV1EphemeralContainer> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1EphemeralContainer, _$IoK8sApiCoreV1EphemeralContainer];

  @override
  final String wireName = r'IoK8sApiCoreV1EphemeralContainer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1EphemeralContainer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.args != null) {
      yield r'args';
      yield serializers.serialize(
        object.args,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.command != null) {
      yield r'command';
      yield serializers.serialize(
        object.command,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.env != null) {
      yield r'env';
      yield serializers.serialize(
        object.env,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1EnvVar)]),
      );
    }
    if (object.envFrom != null) {
      yield r'envFrom';
      yield serializers.serialize(
        object.envFrom,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1EnvFromSource)]),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(String),
      );
    }
    if (object.imagePullPolicy != null) {
      yield r'imagePullPolicy';
      yield serializers.serialize(
        object.imagePullPolicy,
        specifiedType: const FullType(String),
      );
    }
    if (object.lifecycle != null) {
      yield r'lifecycle';
      yield serializers.serialize(
        object.lifecycle,
        specifiedType: const FullType(IoK8sApiCoreV1Lifecycle),
      );
    }
    if (object.livenessProbe != null) {
      yield r'livenessProbe';
      yield serializers.serialize(
        object.livenessProbe,
        specifiedType: const FullType(IoK8sApiCoreV1Probe),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.ports != null) {
      yield r'ports';
      yield serializers.serialize(
        object.ports,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1ContainerPort)]),
      );
    }
    if (object.readinessProbe != null) {
      yield r'readinessProbe';
      yield serializers.serialize(
        object.readinessProbe,
        specifiedType: const FullType(IoK8sApiCoreV1Probe),
      );
    }
    if (object.resources != null) {
      yield r'resources';
      yield serializers.serialize(
        object.resources,
        specifiedType: const FullType(IoK8sApiCoreV1ResourceRequirements),
      );
    }
    if (object.securityContext != null) {
      yield r'securityContext';
      yield serializers.serialize(
        object.securityContext,
        specifiedType: const FullType(IoK8sApiCoreV1SecurityContext),
      );
    }
    if (object.startupProbe != null) {
      yield r'startupProbe';
      yield serializers.serialize(
        object.startupProbe,
        specifiedType: const FullType(IoK8sApiCoreV1Probe),
      );
    }
    if (object.stdin != null) {
      yield r'stdin';
      yield serializers.serialize(
        object.stdin,
        specifiedType: const FullType(bool),
      );
    }
    if (object.stdinOnce != null) {
      yield r'stdinOnce';
      yield serializers.serialize(
        object.stdinOnce,
        specifiedType: const FullType(bool),
      );
    }
    if (object.targetContainerName != null) {
      yield r'targetContainerName';
      yield serializers.serialize(
        object.targetContainerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.terminationMessagePath != null) {
      yield r'terminationMessagePath';
      yield serializers.serialize(
        object.terminationMessagePath,
        specifiedType: const FullType(String),
      );
    }
    if (object.terminationMessagePolicy != null) {
      yield r'terminationMessagePolicy';
      yield serializers.serialize(
        object.terminationMessagePolicy,
        specifiedType: const FullType(String),
      );
    }
    if (object.tty != null) {
      yield r'tty';
      yield serializers.serialize(
        object.tty,
        specifiedType: const FullType(bool),
      );
    }
    if (object.volumeDevices != null) {
      yield r'volumeDevices';
      yield serializers.serialize(
        object.volumeDevices,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1VolumeDevice)]),
      );
    }
    if (object.volumeMounts != null) {
      yield r'volumeMounts';
      yield serializers.serialize(
        object.volumeMounts,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1VolumeMount)]),
      );
    }
    if (object.workingDir != null) {
      yield r'workingDir';
      yield serializers.serialize(
        object.workingDir,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1EphemeralContainer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1EphemeralContainerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'args':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.args.replace(valueDes);
          break;
        case r'command':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.command.replace(valueDes);
          break;
        case r'env':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1EnvVar)]),
          ) as BuiltList<IoK8sApiCoreV1EnvVar>;
          result.env.replace(valueDes);
          break;
        case r'envFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1EnvFromSource)]),
          ) as BuiltList<IoK8sApiCoreV1EnvFromSource>;
          result.envFrom.replace(valueDes);
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.image = valueDes;
          break;
        case r'imagePullPolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imagePullPolicy = valueDes;
          break;
        case r'lifecycle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1Lifecycle),
          ) as IoK8sApiCoreV1Lifecycle;
          result.lifecycle.replace(valueDes);
          break;
        case r'livenessProbe':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1Probe),
          ) as IoK8sApiCoreV1Probe;
          result.livenessProbe.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'ports':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1ContainerPort)]),
          ) as BuiltList<IoK8sApiCoreV1ContainerPort>;
          result.ports.replace(valueDes);
          break;
        case r'readinessProbe':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1Probe),
          ) as IoK8sApiCoreV1Probe;
          result.readinessProbe.replace(valueDes);
          break;
        case r'resources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ResourceRequirements),
          ) as IoK8sApiCoreV1ResourceRequirements;
          result.resources.replace(valueDes);
          break;
        case r'securityContext':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1SecurityContext),
          ) as IoK8sApiCoreV1SecurityContext;
          result.securityContext.replace(valueDes);
          break;
        case r'startupProbe':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1Probe),
          ) as IoK8sApiCoreV1Probe;
          result.startupProbe.replace(valueDes);
          break;
        case r'stdin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.stdin = valueDes;
          break;
        case r'stdinOnce':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.stdinOnce = valueDes;
          break;
        case r'targetContainerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.targetContainerName = valueDes;
          break;
        case r'terminationMessagePath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.terminationMessagePath = valueDes;
          break;
        case r'terminationMessagePolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.terminationMessagePolicy = valueDes;
          break;
        case r'tty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.tty = valueDes;
          break;
        case r'volumeDevices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1VolumeDevice)]),
          ) as BuiltList<IoK8sApiCoreV1VolumeDevice>;
          result.volumeDevices.replace(valueDes);
          break;
        case r'volumeMounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1VolumeMount)]),
          ) as BuiltList<IoK8sApiCoreV1VolumeMount>;
          result.volumeMounts.replace(valueDes);
          break;
        case r'workingDir':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.workingDir = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1EphemeralContainer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1EphemeralContainerBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

