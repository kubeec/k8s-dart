//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_container_state_running.g.dart';

/// ContainerStateRunning is a running state of a container.
///
/// Properties:
/// * [startedAt] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
@BuiltValue()
abstract class IoK8sApiCoreV1ContainerStateRunning implements Built<IoK8sApiCoreV1ContainerStateRunning, IoK8sApiCoreV1ContainerStateRunningBuilder> {
  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  IoK8sApiCoreV1ContainerStateRunning._();

  factory IoK8sApiCoreV1ContainerStateRunning([void updates(IoK8sApiCoreV1ContainerStateRunningBuilder b)]) = _$IoK8sApiCoreV1ContainerStateRunning;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ContainerStateRunningBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ContainerStateRunning> get serializer => _$IoK8sApiCoreV1ContainerStateRunningSerializer();
}

class _$IoK8sApiCoreV1ContainerStateRunningSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ContainerStateRunning> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ContainerStateRunning, _$IoK8sApiCoreV1ContainerStateRunning];

  @override
  final String wireName = r'IoK8sApiCoreV1ContainerStateRunning';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ContainerStateRunning object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.startedAt != null) {
      yield r'startedAt';
      yield serializers.serialize(
        object.startedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ContainerStateRunning object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ContainerStateRunningBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'startedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ContainerStateRunning deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ContainerStateRunningBuilder();
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

