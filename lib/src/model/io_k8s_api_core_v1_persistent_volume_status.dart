//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_persistent_volume_status.g.dart';

/// PersistentVolumeStatus is the current status of a persistent volume.
///
/// Properties:
/// * [message] - message is a human-readable message indicating details about why the volume is in this state.
/// * [phase] - phase indicates if a volume is available, bound to a claim, or released by a claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase  
/// * [reason] - reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.
@BuiltValue()
abstract class IoK8sApiCoreV1PersistentVolumeStatus implements Built<IoK8sApiCoreV1PersistentVolumeStatus, IoK8sApiCoreV1PersistentVolumeStatusBuilder> {
  /// message is a human-readable message indicating details about why the volume is in this state.
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// phase indicates if a volume is available, bound to a claim, or released by a claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase  
  @BuiltValueField(wireName: r'phase')
  String? get phase;

  /// reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  IoK8sApiCoreV1PersistentVolumeStatus._();

  factory IoK8sApiCoreV1PersistentVolumeStatus([void updates(IoK8sApiCoreV1PersistentVolumeStatusBuilder b)]) = _$IoK8sApiCoreV1PersistentVolumeStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PersistentVolumeStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PersistentVolumeStatus> get serializer => _$IoK8sApiCoreV1PersistentVolumeStatusSerializer();
}

class _$IoK8sApiCoreV1PersistentVolumeStatusSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PersistentVolumeStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PersistentVolumeStatus, _$IoK8sApiCoreV1PersistentVolumeStatus];

  @override
  final String wireName = r'IoK8sApiCoreV1PersistentVolumeStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PersistentVolumeStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.phase != null) {
      yield r'phase';
      yield serializers.serialize(
        object.phase,
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
    IoK8sApiCoreV1PersistentVolumeStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PersistentVolumeStatusBuilder result,
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
        case r'phase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phase = valueDes;
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
  IoK8sApiCoreV1PersistentVolumeStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PersistentVolumeStatusBuilder();
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

