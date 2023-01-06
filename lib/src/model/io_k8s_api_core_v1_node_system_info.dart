//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_node_system_info.g.dart';

/// NodeSystemInfo is a set of ids/uuids to uniquely identify the node.
///
/// Properties:
/// * [architecture] - The Architecture reported by the node
/// * [bootID] - Boot ID reported by the node.
/// * [containerRuntimeVersion] - ContainerRuntime Version reported by the node through runtime remote API (e.g. containerd://1.4.2).
/// * [kernelVersion] - Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).
/// * [kubeProxyVersion] - KubeProxy Version reported by the node.
/// * [kubeletVersion] - Kubelet Version reported by the node.
/// * [machineID] - MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: http://man7.org/linux/man-pages/man5/machine-id.5.html
/// * [operatingSystem] - The Operating System reported by the node
/// * [osImage] - OS Image reported by the node from /etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).
/// * [systemUUID] - SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid
@BuiltValue()
abstract class IoK8sApiCoreV1NodeSystemInfo implements Built<IoK8sApiCoreV1NodeSystemInfo, IoK8sApiCoreV1NodeSystemInfoBuilder> {
  /// The Architecture reported by the node
  @BuiltValueField(wireName: r'architecture')
  String get architecture;

  /// Boot ID reported by the node.
  @BuiltValueField(wireName: r'bootID')
  String get bootID;

  /// ContainerRuntime Version reported by the node through runtime remote API (e.g. containerd://1.4.2).
  @BuiltValueField(wireName: r'containerRuntimeVersion')
  String get containerRuntimeVersion;

  /// Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).
  @BuiltValueField(wireName: r'kernelVersion')
  String get kernelVersion;

  /// KubeProxy Version reported by the node.
  @BuiltValueField(wireName: r'kubeProxyVersion')
  String get kubeProxyVersion;

  /// Kubelet Version reported by the node.
  @BuiltValueField(wireName: r'kubeletVersion')
  String get kubeletVersion;

  /// MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: http://man7.org/linux/man-pages/man5/machine-id.5.html
  @BuiltValueField(wireName: r'machineID')
  String get machineID;

  /// The Operating System reported by the node
  @BuiltValueField(wireName: r'operatingSystem')
  String get operatingSystem;

  /// OS Image reported by the node from /etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).
  @BuiltValueField(wireName: r'osImage')
  String get osImage;

  /// SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid
  @BuiltValueField(wireName: r'systemUUID')
  String get systemUUID;

  IoK8sApiCoreV1NodeSystemInfo._();

  factory IoK8sApiCoreV1NodeSystemInfo([void updates(IoK8sApiCoreV1NodeSystemInfoBuilder b)]) = _$IoK8sApiCoreV1NodeSystemInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1NodeSystemInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1NodeSystemInfo> get serializer => _$IoK8sApiCoreV1NodeSystemInfoSerializer();
}

class _$IoK8sApiCoreV1NodeSystemInfoSerializer implements PrimitiveSerializer<IoK8sApiCoreV1NodeSystemInfo> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1NodeSystemInfo, _$IoK8sApiCoreV1NodeSystemInfo];

  @override
  final String wireName = r'IoK8sApiCoreV1NodeSystemInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1NodeSystemInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'architecture';
    yield serializers.serialize(
      object.architecture,
      specifiedType: const FullType(String),
    );
    yield r'bootID';
    yield serializers.serialize(
      object.bootID,
      specifiedType: const FullType(String),
    );
    yield r'containerRuntimeVersion';
    yield serializers.serialize(
      object.containerRuntimeVersion,
      specifiedType: const FullType(String),
    );
    yield r'kernelVersion';
    yield serializers.serialize(
      object.kernelVersion,
      specifiedType: const FullType(String),
    );
    yield r'kubeProxyVersion';
    yield serializers.serialize(
      object.kubeProxyVersion,
      specifiedType: const FullType(String),
    );
    yield r'kubeletVersion';
    yield serializers.serialize(
      object.kubeletVersion,
      specifiedType: const FullType(String),
    );
    yield r'machineID';
    yield serializers.serialize(
      object.machineID,
      specifiedType: const FullType(String),
    );
    yield r'operatingSystem';
    yield serializers.serialize(
      object.operatingSystem,
      specifiedType: const FullType(String),
    );
    yield r'osImage';
    yield serializers.serialize(
      object.osImage,
      specifiedType: const FullType(String),
    );
    yield r'systemUUID';
    yield serializers.serialize(
      object.systemUUID,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1NodeSystemInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1NodeSystemInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'architecture':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.architecture = valueDes;
          break;
        case r'bootID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bootID = valueDes;
          break;
        case r'containerRuntimeVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.containerRuntimeVersion = valueDes;
          break;
        case r'kernelVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kernelVersion = valueDes;
          break;
        case r'kubeProxyVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kubeProxyVersion = valueDes;
          break;
        case r'kubeletVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kubeletVersion = valueDes;
          break;
        case r'machineID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.machineID = valueDes;
          break;
        case r'operatingSystem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operatingSystem = valueDes;
          break;
        case r'osImage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.osImage = valueDes;
          break;
        case r'systemUUID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.systemUUID = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1NodeSystemInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1NodeSystemInfoBuilder();
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

