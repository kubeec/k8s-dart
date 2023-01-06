//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_windows_security_context_options.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_se_linux_options.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_sysctl.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_seccomp_profile.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_pod_security_context.g.dart';

/// PodSecurityContext holds pod-level security attributes and common container settings. Some fields are also present in container.securityContext.  Field values of container.securityContext take precedence over field values of PodSecurityContext.
///
/// Properties:
/// * [fsGroup] - A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:  1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----  If unset, the Kubelet will not modify the ownership and permissions of any volume. Note that this field cannot be set when spec.os.name is windows.
/// * [fsGroupChangePolicy] - fsGroupChangePolicy defines behavior of changing ownership and permission of the volume before being exposed inside Pod. This field will only apply to volume types which support fsGroup based ownership(and permissions). It will have no effect on ephemeral volume types such as: secret, configmaps and emptydir. Valid values are \"OnRootMismatch\" and \"Always\". If not specified, \"Always\" is used. Note that this field cannot be set when spec.os.name is windows.
/// * [runAsGroup] - The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows.
/// * [runAsNonRoot] - Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
/// * [runAsUser] - The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows.
/// * [seLinuxOptions] 
/// * [seccompProfile] 
/// * [supplementalGroups] - A list of groups applied to the first process run in each container, in addition to the container's primary GID, the fsGroup (if specified), and group memberships defined in the container image for the uid of the container process. If unspecified, no additional groups are added to any container. Note that group memberships defined in the container image for the uid of the container process are still effective, even if they are not included in this list. Note that this field cannot be set when spec.os.name is windows.
/// * [sysctls] - Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch. Note that this field cannot be set when spec.os.name is windows.
/// * [windowsOptions] 
@BuiltValue()
abstract class IoK8sApiCoreV1PodSecurityContext implements Built<IoK8sApiCoreV1PodSecurityContext, IoK8sApiCoreV1PodSecurityContextBuilder> {
  /// A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:  1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----  If unset, the Kubelet will not modify the ownership and permissions of any volume. Note that this field cannot be set when spec.os.name is windows.
  @BuiltValueField(wireName: r'fsGroup')
  int? get fsGroup;

  /// fsGroupChangePolicy defines behavior of changing ownership and permission of the volume before being exposed inside Pod. This field will only apply to volume types which support fsGroup based ownership(and permissions). It will have no effect on ephemeral volume types such as: secret, configmaps and emptydir. Valid values are \"OnRootMismatch\" and \"Always\". If not specified, \"Always\" is used. Note that this field cannot be set when spec.os.name is windows.
  @BuiltValueField(wireName: r'fsGroupChangePolicy')
  String? get fsGroupChangePolicy;

  /// The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows.
  @BuiltValueField(wireName: r'runAsGroup')
  int? get runAsGroup;

  /// Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  @BuiltValueField(wireName: r'runAsNonRoot')
  bool? get runAsNonRoot;

  /// The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows.
  @BuiltValueField(wireName: r'runAsUser')
  int? get runAsUser;

  @BuiltValueField(wireName: r'seLinuxOptions')
  IoK8sApiCoreV1SELinuxOptions? get seLinuxOptions;

  @BuiltValueField(wireName: r'seccompProfile')
  IoK8sApiCoreV1SeccompProfile? get seccompProfile;

  /// A list of groups applied to the first process run in each container, in addition to the container's primary GID, the fsGroup (if specified), and group memberships defined in the container image for the uid of the container process. If unspecified, no additional groups are added to any container. Note that group memberships defined in the container image for the uid of the container process are still effective, even if they are not included in this list. Note that this field cannot be set when spec.os.name is windows.
  @BuiltValueField(wireName: r'supplementalGroups')
  BuiltList<int>? get supplementalGroups;

  /// Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch. Note that this field cannot be set when spec.os.name is windows.
  @BuiltValueField(wireName: r'sysctls')
  BuiltList<IoK8sApiCoreV1Sysctl>? get sysctls;

  @BuiltValueField(wireName: r'windowsOptions')
  IoK8sApiCoreV1WindowsSecurityContextOptions? get windowsOptions;

  IoK8sApiCoreV1PodSecurityContext._();

  factory IoK8sApiCoreV1PodSecurityContext([void updates(IoK8sApiCoreV1PodSecurityContextBuilder b)]) = _$IoK8sApiCoreV1PodSecurityContext;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PodSecurityContextBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PodSecurityContext> get serializer => _$IoK8sApiCoreV1PodSecurityContextSerializer();
}

class _$IoK8sApiCoreV1PodSecurityContextSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PodSecurityContext> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PodSecurityContext, _$IoK8sApiCoreV1PodSecurityContext];

  @override
  final String wireName = r'IoK8sApiCoreV1PodSecurityContext';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PodSecurityContext object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fsGroup != null) {
      yield r'fsGroup';
      yield serializers.serialize(
        object.fsGroup,
        specifiedType: const FullType(int),
      );
    }
    if (object.fsGroupChangePolicy != null) {
      yield r'fsGroupChangePolicy';
      yield serializers.serialize(
        object.fsGroupChangePolicy,
        specifiedType: const FullType(String),
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
    if (object.supplementalGroups != null) {
      yield r'supplementalGroups';
      yield serializers.serialize(
        object.supplementalGroups,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.sysctls != null) {
      yield r'sysctls';
      yield serializers.serialize(
        object.sysctls,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1Sysctl)]),
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
    IoK8sApiCoreV1PodSecurityContext object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PodSecurityContextBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fsGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.fsGroup = valueDes;
          break;
        case r'fsGroupChangePolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fsGroupChangePolicy = valueDes;
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
        case r'supplementalGroups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.supplementalGroups.replace(valueDes);
          break;
        case r'sysctls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1Sysctl)]),
          ) as BuiltList<IoK8sApiCoreV1Sysctl>;
          result.sysctls.replace(valueDes);
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
  IoK8sApiCoreV1PodSecurityContext deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PodSecurityContextBuilder();
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

