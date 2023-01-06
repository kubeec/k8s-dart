//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apps_v1_deployment_condition.g.dart';

/// DeploymentCondition describes the state of a deployment at a certain point.
///
/// Properties:
/// * [lastTransitionTime] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [lastUpdateTime] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [message] - A human readable message indicating details about the transition.
/// * [reason] - The reason for the condition's last transition.
/// * [status] - Status of the condition, one of True, False, Unknown.
/// * [type] - Type of deployment condition.
@BuiltValue()
abstract class IoK8sApiAppsV1DeploymentCondition implements Built<IoK8sApiAppsV1DeploymentCondition, IoK8sApiAppsV1DeploymentConditionBuilder> {
  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'lastTransitionTime')
  DateTime? get lastTransitionTime;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'lastUpdateTime')
  DateTime? get lastUpdateTime;

  /// A human readable message indicating details about the transition.
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// The reason for the condition's last transition.
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// Status of the condition, one of True, False, Unknown.
  @BuiltValueField(wireName: r'status')
  String get status;

  /// Type of deployment condition.
  @BuiltValueField(wireName: r'type')
  String get type;

  IoK8sApiAppsV1DeploymentCondition._();

  factory IoK8sApiAppsV1DeploymentCondition([void updates(IoK8sApiAppsV1DeploymentConditionBuilder b)]) = _$IoK8sApiAppsV1DeploymentCondition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAppsV1DeploymentConditionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAppsV1DeploymentCondition> get serializer => _$IoK8sApiAppsV1DeploymentConditionSerializer();
}

class _$IoK8sApiAppsV1DeploymentConditionSerializer implements PrimitiveSerializer<IoK8sApiAppsV1DeploymentCondition> {
  @override
  final Iterable<Type> types = const [IoK8sApiAppsV1DeploymentCondition, _$IoK8sApiAppsV1DeploymentCondition];

  @override
  final String wireName = r'IoK8sApiAppsV1DeploymentCondition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAppsV1DeploymentCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.lastTransitionTime != null) {
      yield r'lastTransitionTime';
      yield serializers.serialize(
        object.lastTransitionTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastUpdateTime != null) {
      yield r'lastUpdateTime';
      yield serializers.serialize(
        object.lastUpdateTime,
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
    IoK8sApiAppsV1DeploymentCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAppsV1DeploymentConditionBuilder result,
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
        case r'lastUpdateTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastUpdateTime = valueDes;
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
  IoK8sApiAppsV1DeploymentCondition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAppsV1DeploymentConditionBuilder();
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

