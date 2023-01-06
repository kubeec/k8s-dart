//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_windows_security_context_options.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_se_linux_options.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_capabilities.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_seccomp_profile.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_security_context.g.dart';

/// SecurityContext holds security configuration that will be applied to a container. Some fields are present in both SecurityContext and PodSecurityContext.  When both are set, the values in SecurityContext take precedence.
///
/// Properties:
/// * [allowPrivilegeEscalation] - AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN Note that this field cannot be set when spec.os.name is windows.
/// * [capabilities] 
/// * [privileged] - Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false. Note that this field cannot be set when spec.os.name is windows.
/// * [procMount] - procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled. Note that this field cannot be set when spec.os.name is windows.
/// * [readOnlyRootFilesystem] - Whether this container has a read-only root filesystem. Default is false. Note that this field cannot be set when spec.os.name is windows.
/// * [runAsGroup] - The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
/// * [runAsNonRoot] - Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
/// * [runAsUser] - The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
/// * [seLinuxOptions] 
/// * [seccompProfile] 
/// * [windowsOptions] 
@BuiltValue()
abstract class IoK8sApiCoreV1SecurityContext implements Built<IoK8sApiCoreV1SecurityContext, IoK8sApiCoreV1SecurityContextBuilder> {
  /// AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN Note that this field cannot be set when spec.os.name is windows.
  @BuiltValueField(wireName: r'allowPrivilegeEscalation')
  bool? get allowPrivilegeEscalation;

  @BuiltValueField(wireName: r'capabilities')
  IoK8sApiCoreV1Capabilities? get capabilities;

  /// Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false. Note that this field cannot be set when spec.os.name is windows.
  @BuiltValueField(wireName: r'privileged')
  bool? get privileged;

  /// procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled. Note that this field cannot be set when spec.os.name is windows.
  @BuiltValueField(wireName: r'procMount')
  String? get procMount;

  /// Whether this container has a read-only root filesystem. Default is false. Note that this field cannot be set when spec.os.name is windows.
  @BuiltValueField(wireName: r'readOnlyRootFilesystem')
  bool? get readOnlyRootFilesystem;

  /// The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
  @BuiltValueField(wireName: r'runAsGroup')
  int? get runAsGroup;

  /// Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  @BuiltValueField(wireName: r'runAsNonRoot')
  bool? get runAsNonRoot;

  /// The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
  @BuiltValueField(wireName: r'runAsUser')
  int? get runAsUser;

  @BuiltValueField(wireName: r'seLinuxOptions')
  IoK8sApiCoreV1SELinuxOptions? get seLinuxOptions;

  @BuiltValueField(wireName: r'seccompProfile')
  IoK8sApiCoreV1SeccompProfile? get seccompProfile;

  @BuiltValueField(wireName: r'windowsOptions')
  IoK8sApiCoreV1WindowsSecurityContextOptions? get windowsOptions;

  IoK8sApiCoreV1SecurityContext._();

  factory IoK8sApiCoreV1SecurityContext([void updates(IoK8sApiCoreV1SecurityContextBuilder b)]) = _$IoK8sApiCoreV1SecurityContext;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1SecurityContextBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1SecurityContext> get serializer => _$IoK8sApiCoreV1SecurityContextSerializer();
}

class _$IoK8sApiCoreV1SecurityContextSerializer implements PrimitiveSerializer<IoK8sApiCoreV1SecurityContext> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1SecurityContext, _$IoK8sApiCoreV1SecurityContext];

  @override
  final String wireName = r'IoK8sApiCoreV1SecurityContext';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1SecurityContext object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.allowPrivilegeEscalation != null) {
      yield r'allowPrivilegeEscalation';
      yield serializers.serialize(
        object.allowPrivilegeEscalation,
        specifiedType: const FullType(bool),
      );
    }
    if (object.capabilities != null) {
      yield r'capabilities';
      yield serializers.serialize(
        object.capabilities,
        specifiedType: const FullType(IoK8sApiCoreV1Capabilities),
      );
    }
    if (object.privileged != null) {
      yield r'privileged';
      yield serializers.serialize(
        object.privileged,
        specifiedType: const FullType(bool),
      );
    }
    if (object.procMount != null) {
      yield r'procMount';
      yield serializers.serialize(
        object.procMount,
        specifiedType: const FullType(String),
      );
    }
    if (object.readOnlyRootFilesystem != null) {
      yield r'readOnlyRootFilesystem';
      yield serializers.serialize(
        object.readOnlyRootFilesystem,
        specifiedType: const FullType(bool),
      );
    }
    if (object.runAsGroup != null) {
      yield r'runAsGroup';
      yield serializers.serialize(
        object.runAsGroup,
        specifiedType: const FullType(int),
      );
    }
    if (object.runAsNonRoot != null) {
      yield r'runAsNonRoot';
      yield serializers.serialize(
        object.runAsNonRoot,
        specifiedType: const FullType(bool),
      );
    }
    if (object.runAsUser != null) {
      yield r'runAsUser';
      yield serializers.serialize(
        object.runAsUser,
        specifiedType: const FullType(int),
      );
    }
    if (object.seLinuxOptions != null) {
      yield r'seLinuxOptions';
      yield serializers.serialize(
        object.seLinuxOptions,
        specifiedType: const FullType(IoK8sApiCoreV1SELinuxOptions),
      );
    }
    if (object.seccompProfile != null) {
      yield r'seccompProfile';
      yield serializers.serialize(
        object.seccompProfile,
        specifiedType: const FullType(IoK8sApiCoreV1SeccompProfile),
      );
    }
    if (object.windowsOptions != null) {
      yield r'windowsOptions';
      yield serializers.serialize(
        object.windowsOptions,
        specifiedType: const FullType(IoK8sApiCoreV1WindowsSecurityContextOptions),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1SecurityContext object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1SecurityContextBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'allowPrivilegeEscalation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowPrivilegeEscalation = valueDes;
          break;
        case r'capabilities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1Capabilities),
          ) as IoK8sApiCoreV1Capabilities;
          result.capabilities.replace(valueDes);
          break;
        case r'privileged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.privileged = valueDes;
          break;
        case r'procMount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.procMount = valueDes;
          break;
        case r'readOnlyRootFilesystem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.readOnlyRootFilesystem = valueDes;
          break;
        case r'runAsGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.runAsGroup = valueDes;
          break;
        case r'runAsNonRoot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.runAsNonRoot = valueDes;
          break;
        case r'runAsUser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.runAsUser = valueDes;
          break;
        case r'seLinuxOptions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1SELinuxOptions),
          ) as IoK8sApiCoreV1SELinuxOptions;
          result.seLinuxOptions.replace(valueDes);
          break;
        case r'seccompProfile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1SeccompProfile),
          ) as IoK8sApiCoreV1SeccompProfile;
          result.seccompProfile.replace(valueDes);
          break;
        case r'windowsOptions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1WindowsSecurityContextOptions),
          ) as IoK8sApiCoreV1WindowsSecurityContextOptions;
          result.windowsOptions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1SecurityContext deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1SecurityContextBuilder();
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

