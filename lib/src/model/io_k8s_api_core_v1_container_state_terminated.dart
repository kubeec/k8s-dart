//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_container_state_terminated.g.dart';

/// ContainerStateTerminated is a terminated state of a container.
///
/// Properties:
/// * [containerID] - Container's ID in the format '<type>://<container_id>'
/// * [exitCode] - Exit status from the last termination of the container
/// * [finishedAt] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [message] - Message regarding the last termination of the container
/// * [reason] - (brief) reason from the last termination of the container
/// * [signal] - Signal from the last termination of the container
/// * [startedAt] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
@BuiltValue()
abstract class IoK8sApiCoreV1ContainerStateTerminated implements Built<IoK8sApiCoreV1ContainerStateTerminated, IoK8sApiCoreV1ContainerStateTerminatedBuilder> {
  /// Container's ID in the format '<type>://<container_id>'
  @BuiltValueField(wireName: r'containerID')
  String? get containerID;

  /// Exit status from the last termination of the container
  @BuiltValueField(wireName: r'exitCode')
  int get exitCode;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  /// Message regarding the last termination of the container
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// (brief) reason from the last termination of the container
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// Signal from the last termination of the container
  @BuiltValueField(wireName: r'signal')
  int? get signal;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  IoK8sApiCoreV1ContainerStateTerminated._();

  factory IoK8sApiCoreV1ContainerStateTerminated([void updates(IoK8sApiCoreV1ContainerStateTerminatedBuilder b)]) = _$IoK8sApiCoreV1ContainerStateTerminated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ContainerStateTerminatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ContainerStateTerminated> get serializer => _$IoK8sApiCoreV1ContainerStateTerminatedSerializer();
}

class _$IoK8sApiCoreV1ContainerStateTerminatedSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ContainerStateTerminated> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ContainerStateTerminated, _$IoK8sApiCoreV1ContainerStateTerminated];

  @override
  final String wireName = r'IoK8sApiCoreV1ContainerStateTerminated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ContainerStateTerminated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.containerID != null) {
      yield r'containerID';
      yield serializers.serialize(
        object.containerID,
        specifiedType: const FullType(String),
      );
    }
    yield r'exitCode';
    yield serializers.serialize(
      object.exitCode,
      specifiedType: const FullType(int),
    );
    if (object.finishedAt != null) {
      yield r'finishedAt';
      yield serializers.serialize(
        object.finishedAt,
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
    if (object.signal != null) {
      yield r'signal';
      yield serializers.serialize(
        object.signal,
        specifiedType: const FullType(int),
      );
    }
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
    IoK8sApiCoreV1ContainerStateTerminated object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ContainerStateTerminatedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'containerID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.containerID = valueDes;
          break;
        case r'exitCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.exitCode = valueDes;
          break;
        case r'finishedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.finishedAt = valueDes;
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
        case r'signal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.signal = valueDes;
          break;
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
  IoK8sApiCoreV1ContainerStateTerminated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ContainerStateTerminatedBuilder();
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

