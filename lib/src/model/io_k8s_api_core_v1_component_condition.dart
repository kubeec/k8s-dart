//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_component_condition.g.dart';

/// Information about the condition of a component.
///
/// Properties:
/// * [error] - Condition error code for a component. For example, a health check error code.
/// * [message] - Message about the condition for a component. For example, information about a health check.
/// * [status] - Status of the condition for a component. Valid values for \"Healthy\": \"True\", \"False\", or \"Unknown\".
/// * [type] - Type of condition for a component. Valid value: \"Healthy\"
@BuiltValue()
abstract class IoK8sApiCoreV1ComponentCondition implements Built<IoK8sApiCoreV1ComponentCondition, IoK8sApiCoreV1ComponentConditionBuilder> {
  /// Condition error code for a component. For example, a health check error code.
  @BuiltValueField(wireName: r'error')
  String? get error;

  /// Message about the condition for a component. For example, information about a health check.
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// Status of the condition for a component. Valid values for \"Healthy\": \"True\", \"False\", or \"Unknown\".
  @BuiltValueField(wireName: r'status')
  String get status;

  /// Type of condition for a component. Valid value: \"Healthy\"
  @BuiltValueField(wireName: r'type')
  String get type;

  IoK8sApiCoreV1ComponentCondition._();

  factory IoK8sApiCoreV1ComponentCondition([void updates(IoK8sApiCoreV1ComponentConditionBuilder b)]) = _$IoK8sApiCoreV1ComponentCondition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ComponentConditionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ComponentCondition> get serializer => _$IoK8sApiCoreV1ComponentConditionSerializer();
}

class _$IoK8sApiCoreV1ComponentConditionSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ComponentCondition> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ComponentCondition, _$IoK8sApiCoreV1ComponentCondition];

  @override
  final String wireName = r'IoK8sApiCoreV1ComponentCondition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ComponentCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
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
    IoK8sApiCoreV1ComponentCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ComponentConditionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
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
  IoK8sApiCoreV1ComponentCondition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ComponentConditionBuilder();
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

