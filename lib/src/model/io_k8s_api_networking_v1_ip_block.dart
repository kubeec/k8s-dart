//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1_ip_block.g.dart';

/// IPBlock describes a particular CIDR (Ex. \"192.168.1.0/24\",\"2001:db8::/64\") that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The except entry describes CIDRs that should not be included within this rule.
///
/// Properties:
/// * [cidr] - CIDR is a string representing the IP Block Valid examples are \"192.168.1.0/24\" or \"2001:db8::/64\"
/// * [except] - Except is a slice of CIDRs that should not be included within an IP Block Valid examples are \"192.168.1.0/24\" or \"2001:db8::/64\" Except values will be rejected if they are outside the CIDR range
@BuiltValue()
abstract class IoK8sApiNetworkingV1IPBlock implements Built<IoK8sApiNetworkingV1IPBlock, IoK8sApiNetworkingV1IPBlockBuilder> {
  /// CIDR is a string representing the IP Block Valid examples are \"192.168.1.0/24\" or \"2001:db8::/64\"
  @BuiltValueField(wireName: r'cidr')
  String get cidr;

  /// Except is a slice of CIDRs that should not be included within an IP Block Valid examples are \"192.168.1.0/24\" or \"2001:db8::/64\" Except values will be rejected if they are outside the CIDR range
  @BuiltValueField(wireName: r'except')
  BuiltList<String>? get except;

  IoK8sApiNetworkingV1IPBlock._();

  factory IoK8sApiNetworkingV1IPBlock([void updates(IoK8sApiNetworkingV1IPBlockBuilder b)]) = _$IoK8sApiNetworkingV1IPBlock;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1IPBlockBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1IPBlock> get serializer => _$IoK8sApiNetworkingV1IPBlockSerializer();
}

class _$IoK8sApiNetworkingV1IPBlockSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1IPBlock> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1IPBlock, _$IoK8sApiNetworkingV1IPBlock];

  @override
  final String wireName = r'IoK8sApiNetworkingV1IPBlock';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1IPBlock object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'cidr';
    yield serializers.serialize(
      object.cidr,
      specifiedType: const FullType(String),
    );
    if (object.except != null) {
      yield r'except';
      yield serializers.serialize(
        object.except,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNetworkingV1IPBlock object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1IPBlockBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cidr':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cidr = valueDes;
          break;
        case r'except':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.except.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNetworkingV1IPBlock deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1IPBlockBuilder();
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

