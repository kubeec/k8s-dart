//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apps_v1_stateful_set_condition.g.dart';

/// StatefulSetCondition describes the state of a statefulset at a certain point.
///
/// Properties:
/// * [lastTransitionTime] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [message] - A human readable message indicating details about the transition.
/// * [reason] - The reason for the condition's last transition.
/// * [status] - Status of the condition, one of True, False, Unknown.
/// * [type] - Type of statefulset condition.
@BuiltValue()
abstract class IoK8sApiAppsV1StatefulSetCondition implements Built<IoK8sApiAppsV1StatefulSetCondition, IoK8sApiAppsV1StatefulSetConditionBuilder> {
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

  /// Type of statefulset condition.
  @BuiltValueField(wireName: r'type')
  String get type;

  IoK8sApiAppsV1StatefulSetCondition._();

  factory IoK8sApiAppsV1StatefulSetCondition([void updates(IoK8sApiAppsV1StatefulSetConditionBuilder b)]) = _$IoK8sApiAppsV1StatefulSetCondition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAppsV1StatefulSetConditionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAppsV1StatefulSetCondition> get serializer => _$IoK8sApiAppsV1StatefulSetConditionSerializer();
}

class _$IoK8sApiAppsV1StatefulSetConditionSerializer implements PrimitiveSerializer<IoK8sApiAppsV1StatefulSetCondition> {
  @override
  final Iterable<Type> types = const [IoK8sApiAppsV1StatefulSetCondition, _$IoK8sApiAppsV1StatefulSetCondition];

  @override
  final String wireName = r'IoK8sApiAppsV1StatefulSetCondition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAppsV1StatefulSetCondition object, {
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
    IoK8sApiAppsV1StatefulSetCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAppsV1StatefulSetConditionBuilder result,
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
  IoK8sApiAppsV1StatefulSetCondition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAppsV1StatefulSetConditionBuilder();
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

