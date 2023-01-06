//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_toleration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_node_v1_scheduling.g.dart';

/// Scheduling specifies the scheduling constraints for nodes supporting a RuntimeClass.
///
/// Properties:
/// * [nodeSelector] - nodeSelector lists labels that must be present on nodes that support this RuntimeClass. Pods using this RuntimeClass can only be scheduled to a node matched by this selector. The RuntimeClass nodeSelector is merged with a pod's existing nodeSelector. Any conflicts will cause the pod to be rejected in admission.
/// * [tolerations] - tolerations are appended (excluding duplicates) to pods running with this RuntimeClass during admission, effectively unioning the set of nodes tolerated by the pod and the RuntimeClass.
@BuiltValue()
abstract class IoK8sApiNodeV1Scheduling implements Built<IoK8sApiNodeV1Scheduling, IoK8sApiNodeV1SchedulingBuilder> {
  /// nodeSelector lists labels that must be present on nodes that support this RuntimeClass. Pods using this RuntimeClass can only be scheduled to a node matched by this selector. The RuntimeClass nodeSelector is merged with a pod's existing nodeSelector. Any conflicts will cause the pod to be rejected in admission.
  @BuiltValueField(wireName: r'nodeSelector')
  BuiltMap<String, String>? get nodeSelector;

  /// tolerations are appended (excluding duplicates) to pods running with this RuntimeClass during admission, effectively unioning the set of nodes tolerated by the pod and the RuntimeClass.
  @BuiltValueField(wireName: r'tolerations')
  BuiltList<IoK8sApiCoreV1Toleration>? get tolerations;

  IoK8sApiNodeV1Scheduling._();

  factory IoK8sApiNodeV1Scheduling([void updates(IoK8sApiNodeV1SchedulingBuilder b)]) = _$IoK8sApiNodeV1Scheduling;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNodeV1SchedulingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNodeV1Scheduling> get serializer => _$IoK8sApiNodeV1SchedulingSerializer();
}

class _$IoK8sApiNodeV1SchedulingSerializer implements PrimitiveSerializer<IoK8sApiNodeV1Scheduling> {
  @override
  final Iterable<Type> types = const [IoK8sApiNodeV1Scheduling, _$IoK8sApiNodeV1Scheduling];

  @override
  final String wireName = r'IoK8sApiNodeV1Scheduling';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNodeV1Scheduling object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.nodeSelector != null) {
      yield r'nodeSelector';
      yield serializers.serialize(
        object.nodeSelector,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.tolerations != null) {
      yield r'tolerations';
      yield serializers.serialize(
        object.tolerations,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1Toleration)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNodeV1Scheduling object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNodeV1SchedulingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nodeSelector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.nodeSelector.replace(valueDes);
          break;
        case r'tolerations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1Toleration)]),
          ) as BuiltList<IoK8sApiCoreV1Toleration>;
          result.tolerations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNodeV1Scheduling deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNodeV1SchedulingBuilder();
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

