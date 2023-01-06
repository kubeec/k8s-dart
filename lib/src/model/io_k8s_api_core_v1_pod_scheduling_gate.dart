//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_pod_scheduling_gate.g.dart';

/// PodSchedulingGate is associated to a Pod to guard its scheduling.
///
/// Properties:
/// * [name] - Name of the scheduling gate. Each scheduling gate must have a unique name field.
@BuiltValue()
abstract class IoK8sApiCoreV1PodSchedulingGate implements Built<IoK8sApiCoreV1PodSchedulingGate, IoK8sApiCoreV1PodSchedulingGateBuilder> {
  /// Name of the scheduling gate. Each scheduling gate must have a unique name field.
  @BuiltValueField(wireName: r'name')
  String get name;

  IoK8sApiCoreV1PodSchedulingGate._();

  factory IoK8sApiCoreV1PodSchedulingGate([void updates(IoK8sApiCoreV1PodSchedulingGateBuilder b)]) = _$IoK8sApiCoreV1PodSchedulingGate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PodSchedulingGateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PodSchedulingGate> get serializer => _$IoK8sApiCoreV1PodSchedulingGateSerializer();
}

class _$IoK8sApiCoreV1PodSchedulingGateSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PodSchedulingGate> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PodSchedulingGate, _$IoK8sApiCoreV1PodSchedulingGate];

  @override
  final String wireName = r'IoK8sApiCoreV1PodSchedulingGate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PodSchedulingGate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1PodSchedulingGate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PodSchedulingGateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1PodSchedulingGate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PodSchedulingGateBuilder();
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

