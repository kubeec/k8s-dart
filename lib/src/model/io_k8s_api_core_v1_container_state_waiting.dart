//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_container_state_waiting.g.dart';

/// ContainerStateWaiting is a waiting state of a container.
///
/// Properties:
/// * [message] - Message regarding why the container is not yet running.
/// * [reason] - (brief) reason the container is not yet running.
@BuiltValue()
abstract class IoK8sApiCoreV1ContainerStateWaiting implements Built<IoK8sApiCoreV1ContainerStateWaiting, IoK8sApiCoreV1ContainerStateWaitingBuilder> {
  /// Message regarding why the container is not yet running.
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// (brief) reason the container is not yet running.
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  IoK8sApiCoreV1ContainerStateWaiting._();

  factory IoK8sApiCoreV1ContainerStateWaiting([void updates(IoK8sApiCoreV1ContainerStateWaitingBuilder b)]) = _$IoK8sApiCoreV1ContainerStateWaiting;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ContainerStateWaitingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ContainerStateWaiting> get serializer => _$IoK8sApiCoreV1ContainerStateWaitingSerializer();
}

class _$IoK8sApiCoreV1ContainerStateWaitingSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ContainerStateWaiting> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ContainerStateWaiting, _$IoK8sApiCoreV1ContainerStateWaiting];

  @override
  final String wireName = r'IoK8sApiCoreV1ContainerStateWaiting';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ContainerStateWaiting object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ContainerStateWaiting object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ContainerStateWaitingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ContainerStateWaiting deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ContainerStateWaitingBuilder();
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

