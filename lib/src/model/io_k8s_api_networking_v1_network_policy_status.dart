//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_condition.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1_network_policy_status.g.dart';

/// NetworkPolicyStatus describe the current state of the NetworkPolicy.
///
/// Properties:
/// * [conditions] - Conditions holds an array of metav1.Condition that describe the state of the NetworkPolicy. Current service state
@BuiltValue()
abstract class IoK8sApiNetworkingV1NetworkPolicyStatus implements Built<IoK8sApiNetworkingV1NetworkPolicyStatus, IoK8sApiNetworkingV1NetworkPolicyStatusBuilder> {
  /// Conditions holds an array of metav1.Condition that describe the state of the NetworkPolicy. Current service state
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApimachineryPkgApisMetaV1Condition>? get conditions;

  IoK8sApiNetworkingV1NetworkPolicyStatus._();

  factory IoK8sApiNetworkingV1NetworkPolicyStatus([void updates(IoK8sApiNetworkingV1NetworkPolicyStatusBuilder b)]) = _$IoK8sApiNetworkingV1NetworkPolicyStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1NetworkPolicyStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1NetworkPolicyStatus> get serializer => _$IoK8sApiNetworkingV1NetworkPolicyStatusSerializer();
}

class _$IoK8sApiNetworkingV1NetworkPolicyStatusSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1NetworkPolicyStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1NetworkPolicyStatus, _$IoK8sApiNetworkingV1NetworkPolicyStatus];

  @override
  final String wireName = r'IoK8sApiNetworkingV1NetworkPolicyStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1NetworkPolicyStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1Condition)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNetworkingV1NetworkPolicyStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1NetworkPolicyStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1Condition)]),
          ) as BuiltList<IoK8sApimachineryPkgApisMetaV1Condition>;
          result.conditions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNetworkingV1NetworkPolicyStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1NetworkPolicyStatusBuilder();
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

