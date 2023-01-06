//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_label_selector.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ip_block.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1_network_policy_peer.g.dart';

/// NetworkPolicyPeer describes a peer to allow traffic to/from. Only certain combinations of fields are allowed
///
/// Properties:
/// * [ipBlock] 
/// * [namespaceSelector] 
/// * [podSelector] 
@BuiltValue()
abstract class IoK8sApiNetworkingV1NetworkPolicyPeer implements Built<IoK8sApiNetworkingV1NetworkPolicyPeer, IoK8sApiNetworkingV1NetworkPolicyPeerBuilder> {
  @BuiltValueField(wireName: r'ipBlock')
  IoK8sApiNetworkingV1IPBlock? get ipBlock;

  @BuiltValueField(wireName: r'namespaceSelector')
  IoK8sApimachineryPkgApisMetaV1LabelSelector? get namespaceSelector;

  @BuiltValueField(wireName: r'podSelector')
  IoK8sApimachineryPkgApisMetaV1LabelSelector? get podSelector;

  IoK8sApiNetworkingV1NetworkPolicyPeer._();

  factory IoK8sApiNetworkingV1NetworkPolicyPeer([void updates(IoK8sApiNetworkingV1NetworkPolicyPeerBuilder b)]) = _$IoK8sApiNetworkingV1NetworkPolicyPeer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1NetworkPolicyPeerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1NetworkPolicyPeer> get serializer => _$IoK8sApiNetworkingV1NetworkPolicyPeerSerializer();
}

class _$IoK8sApiNetworkingV1NetworkPolicyPeerSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1NetworkPolicyPeer> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1NetworkPolicyPeer, _$IoK8sApiNetworkingV1NetworkPolicyPeer];

  @override
  final String wireName = r'IoK8sApiNetworkingV1NetworkPolicyPeer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1NetworkPolicyPeer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ipBlock != null) {
      yield r'ipBlock';
      yield serializers.serialize(
        object.ipBlock,
        specifiedType: const FullType(IoK8sApiNetworkingV1IPBlock),
      );
    }
    if (object.namespaceSelector != null) {
      yield r'namespaceSelector';
      yield serializers.serialize(
        object.namespaceSelector,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
      );
    }
    if (object.podSelector != null) {
      yield r'podSelector';
      yield serializers.serialize(
        object.podSelector,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNetworkingV1NetworkPolicyPeer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1NetworkPolicyPeerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ipBlock':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiNetworkingV1IPBlock),
          ) as IoK8sApiNetworkingV1IPBlock;
          result.ipBlock.replace(valueDes);
          break;
        case r'namespaceSelector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
          ) as IoK8sApimachineryPkgApisMetaV1LabelSelector;
          result.namespaceSelector.replace(valueDes);
          break;
        case r'podSelector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
          ) as IoK8sApimachineryPkgApisMetaV1LabelSelector;
          result.podSelector.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNetworkingV1NetworkPolicyPeer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1NetworkPolicyPeerBuilder();
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

