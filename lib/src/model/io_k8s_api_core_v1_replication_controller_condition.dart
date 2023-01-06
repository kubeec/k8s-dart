//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_replication_controller_condition.g.dart';

/// ReplicationControllerCondition describes the state of a replication controller at a certain point.
///
/// Properties:
/// * [lastTransitionTime] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [message] - A human readable message indicating details about the transition.
/// * [reason] - The reason for the condition's last transition.
/// * [status] - Status of the condition, one of True, False, Unknown.
/// * [type] - Type of replication controller condition.
@BuiltValue()
abstract class IoK8sApiCoreV1ReplicationControllerCondition implements Built<IoK8sApiCoreV1ReplicationControllerCondition, IoK8sApiCoreV1ReplicationControllerConditionBuilder> {
  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'lastTransitionTime')
  DateTime? get lastTransitionTime;

  /// A human readable message indicating details about the transition.
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// The reason for the condition's last transition.
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// Status of the condition, one of True, False, Unknown.
  @BuiltValueField(wireName: r'status')
  String get status;

  /// Type of replication controller condition.
  @BuiltValueField(wireName: r'type')
  String get type;

  IoK8sApiCoreV1ReplicationControllerCondition._();

  factory IoK8sApiCoreV1ReplicationControllerCondition([void updates(IoK8sApiCoreV1ReplicationControllerConditionBuilder b)]) = _$IoK8sApiCoreV1ReplicationControllerCondition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ReplicationControllerConditionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ReplicationControllerCondition> get serializer => _$IoK8sApiCoreV1ReplicationControllerConditionSerializer();
}

class _$IoK8sApiCoreV1ReplicationControllerConditionSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ReplicationControllerCondition> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ReplicationControllerCondition, _$IoK8sApiCoreV1ReplicationControllerCondition];

  @override
  final String wireName = r'IoK8sApiCoreV1ReplicationControllerCondition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ReplicationControllerCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    IoK8sApiCoreV1ReplicationControllerCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ReplicationControllerConditionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  IoK8sApiCoreV1ReplicationControllerCondition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ReplicationControllerConditionBuilder();
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

