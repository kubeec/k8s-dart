//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_node_selector.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1alpha1_cluster_cidr_spec.g.dart';

/// ClusterCIDRSpec defines the desired state of ClusterCIDR.
///
/// Properties:
/// * [ipv4] - IPv4 defines an IPv4 IP block in CIDR notation(e.g. \"10.0.0.0/8\"). At least one of IPv4 and IPv6 must be specified. This field is immutable.
/// * [ipv6] - IPv6 defines an IPv6 IP block in CIDR notation(e.g. \"2001:db8::/64\"). At least one of IPv4 and IPv6 must be specified. This field is immutable.
/// * [nodeSelector] 
/// * [perNodeHostBits] - PerNodeHostBits defines the number of host bits to be configured per node. A subnet mask determines how much of the address is used for network bits and host bits. For example an IPv4 address of 192.168.0.0/24, splits the address into 24 bits for the network portion and 8 bits for the host portion. To allocate 256 IPs, set this field to 8 (a /24 mask for IPv4 or a /120 for IPv6). Minimum value is 4 (16 IPs). This field is immutable.
@BuiltValue()
abstract class IoK8sApiNetworkingV1alpha1ClusterCIDRSpec implements Built<IoK8sApiNetworkingV1alpha1ClusterCIDRSpec, IoK8sApiNetworkingV1alpha1ClusterCIDRSpecBuilder> {
  /// IPv4 defines an IPv4 IP block in CIDR notation(e.g. \"10.0.0.0/8\"). At least one of IPv4 and IPv6 must be specified. This field is immutable.
  @BuiltValueField(wireName: r'ipv4')
  String? get ipv4;

  /// IPv6 defines an IPv6 IP block in CIDR notation(e.g. \"2001:db8::/64\"). At least one of IPv4 and IPv6 must be specified. This field is immutable.
  @BuiltValueField(wireName: r'ipv6')
  String? get ipv6;

  @BuiltValueField(wireName: r'nodeSelector')
  IoK8sApiCoreV1NodeSelector? get nodeSelector;

  /// PerNodeHostBits defines the number of host bits to be configured per node. A subnet mask determines how much of the address is used for network bits and host bits. For example an IPv4 address of 192.168.0.0/24, splits the address into 24 bits for the network portion and 8 bits for the host portion. To allocate 256 IPs, set this field to 8 (a /24 mask for IPv4 or a /120 for IPv6). Minimum value is 4 (16 IPs). This field is immutable.
  @BuiltValueField(wireName: r'perNodeHostBits')
  int get perNodeHostBits;

  IoK8sApiNetworkingV1alpha1ClusterCIDRSpec._();

  factory IoK8sApiNetworkingV1alpha1ClusterCIDRSpec([void updates(IoK8sApiNetworkingV1alpha1ClusterCIDRSpecBuilder b)]) = _$IoK8sApiNetworkingV1alpha1ClusterCIDRSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1alpha1ClusterCIDRSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1alpha1ClusterCIDRSpec> get serializer => _$IoK8sApiNetworkingV1alpha1ClusterCIDRSpecSerializer();
}

class _$IoK8sApiNetworkingV1alpha1ClusterCIDRSpecSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1alpha1ClusterCIDRSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1alpha1ClusterCIDRSpec, _$IoK8sApiNetworkingV1alpha1ClusterCIDRSpec];

  @override
  final String wireName = r'IoK8sApiNetworkingV1alpha1ClusterCIDRSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1alpha1ClusterCIDRSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ipv4 != null) {
      yield r'ipv4';
      yield serializers.serialize(
        object.ipv4,
        specifiedType: const FullType(String),
      );
    }
    if (object.ipv6 != null) {
      yield r'ipv6';
      yield serializers.serialize(
        object.ipv6,
        specifiedType: const FullType(String),
      );
    }
    if (object.nodeSelector != null) {
      yield r'nodeSelector';
      yield serializers.serialize(
        object.nodeSelector,
        specifiedType: const FullType(IoK8sApiCoreV1NodeSelector),
      );
    }
    yield r'perNodeHostBits';
    yield serializers.serialize(
      object.perNodeHostBits,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNetworkingV1alpha1ClusterCIDRSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1alpha1ClusterCIDRSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ipv4':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ipv4 = valueDes;
          break;
        case r'ipv6':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ipv6 = valueDes;
          break;
        case r'nodeSelector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1NodeSelector),
          ) as IoK8sApiCoreV1NodeSelector;
          result.nodeSelector.replace(valueDes);
          break;
        case r'perNodeHostBits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.perNodeHostBits = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNetworkingV1alpha1ClusterCIDRSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1alpha1ClusterCIDRSpecBuilder();
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

