//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_pod_readiness_gate.g.dart';

/// PodReadinessGate contains the reference to a pod condition
///
/// Properties:
/// * [conditionType] - ConditionType refers to a condition in the pod's condition list with matching type.
@BuiltValue()
abstract class IoK8sApiCoreV1PodReadinessGate implements Built<IoK8sApiCoreV1PodReadinessGate, IoK8sApiCoreV1PodReadinessGateBuilder> {
  /// ConditionType refers to a condition in the pod's condition list with matching type.
  @BuiltValueField(wireName: r'conditionType')
  String get conditionType;

  IoK8sApiCoreV1PodReadinessGate._();

  factory IoK8sApiCoreV1PodReadinessGate([void updates(IoK8sApiCoreV1PodReadinessGateBuilder b)]) = _$IoK8sApiCoreV1PodReadinessGate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PodReadinessGateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PodReadinessGate> get serializer => _$IoK8sApiCoreV1PodReadinessGateSerializer();
}

class _$IoK8sApiCoreV1PodReadinessGateSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PodReadinessGate> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PodReadinessGate, _$IoK8sApiCoreV1PodReadinessGate];

  @override
  final String wireName = r'IoK8sApiCoreV1PodReadinessGate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PodReadinessGate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'conditionType';
    yield serializers.serialize(
      object.conditionType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1PodReadinessGate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PodReadinessGateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'conditionType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.conditionType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1PodReadinessGate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PodReadinessGateBuilder();
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

