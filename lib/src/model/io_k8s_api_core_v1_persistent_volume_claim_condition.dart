//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_persistent_volume_claim_condition.g.dart';

/// PersistentVolumeClaimCondition contails details about state of pvc
///
/// Properties:
/// * [lastProbeTime] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [lastTransitionTime] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [message] - message is the human-readable message indicating details about last transition.
/// * [reason] - reason is a unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports \"ResizeStarted\" that means the underlying persistent volume is being resized.
/// * [status] 
/// * [type] 
@BuiltValue()
abstract class IoK8sApiCoreV1PersistentVolumeClaimCondition implements Built<IoK8sApiCoreV1PersistentVolumeClaimCondition, IoK8sApiCoreV1PersistentVolumeClaimConditionBuilder> {
  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'lastProbeTime')
  DateTime? get lastProbeTime;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'lastTransitionTime')
  DateTime? get lastTransitionTime;

  /// message is the human-readable message indicating details about last transition.
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// reason is a unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports \"ResizeStarted\" that means the underlying persistent volume is being resized.
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'type')
  String get type;

  IoK8sApiCoreV1PersistentVolumeClaimCondition._();

  factory IoK8sApiCoreV1PersistentVolumeClaimCondition([void updates(IoK8sApiCoreV1PersistentVolumeClaimConditionBuilder b)]) = _$IoK8sApiCoreV1PersistentVolumeClaimCondition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PersistentVolumeClaimConditionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PersistentVolumeClaimCondition> get serializer => _$IoK8sApiCoreV1PersistentVolumeClaimConditionSerializer();
}

class _$IoK8sApiCoreV1PersistentVolumeClaimConditionSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PersistentVolumeClaimCondition> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PersistentVolumeClaimCondition, _$IoK8sApiCoreV1PersistentVolumeClaimCondition];

  @override
  final String wireName = r'IoK8sApiCoreV1PersistentVolumeClaimCondition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PersistentVolumeClaimCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.lastProbeTime != null) {
      yield r'lastProbeTime';
      yield serializers.serialize(
        object.lastProbeTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastTransitionTime != null) {
      yield r'lastTransitionTime';
      yield serializers.serialize(
        object.lastTransitionTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1PersistentVolumeClaimCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PersistentVolumeClaimConditionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lastProbeTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastProbeTime = valueDes;
          break;
        case r'lastTransitionTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastTransitionTime = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1PersistentVolumeClaimCondition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PersistentVolumeClaimConditionBuilder();
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

