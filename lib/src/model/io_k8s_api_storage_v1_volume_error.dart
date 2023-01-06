//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_storage_v1_volume_error.g.dart';

/// VolumeError captures an error encountered during a volume operation.
///
/// Properties:
/// * [message] - String detailing the error encountered during Attach or Detach operation. This string may be logged, so it should not contain sensitive information.
/// * [time] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
@BuiltValue()
abstract class IoK8sApiStorageV1VolumeError implements Built<IoK8sApiStorageV1VolumeError, IoK8sApiStorageV1VolumeErrorBuilder> {
  /// String detailing the error encountered during Attach or Detach operation. This string may be logged, so it should not contain sensitive information.
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'time')
  DateTime? get time;

  IoK8sApiStorageV1VolumeError._();

  factory IoK8sApiStorageV1VolumeError([void updates(IoK8sApiStorageV1VolumeErrorBuilder b)]) = _$IoK8sApiStorageV1VolumeError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiStorageV1VolumeErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiStorageV1VolumeError> get serializer => _$IoK8sApiStorageV1VolumeErrorSerializer();
}

class _$IoK8sApiStorageV1VolumeErrorSerializer implements PrimitiveSerializer<IoK8sApiStorageV1VolumeError> {
  @override
  final Iterable<Type> types = const [IoK8sApiStorageV1VolumeError, _$IoK8sApiStorageV1VolumeError];

  @override
  final String wireName = r'IoK8sApiStorageV1VolumeError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiStorageV1VolumeError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiStorageV1VolumeError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiStorageV1VolumeErrorBuilder result,
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
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.time = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiStorageV1VolumeError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiStorageV1VolumeErrorBuilder();
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

