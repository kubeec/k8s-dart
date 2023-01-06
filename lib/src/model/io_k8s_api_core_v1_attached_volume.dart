//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_attached_volume.g.dart';

/// AttachedVolume describes a volume attached to a node
///
/// Properties:
/// * [devicePath] - DevicePath represents the device path where the volume should be available
/// * [name] - Name of the attached volume
@BuiltValue()
abstract class IoK8sApiCoreV1AttachedVolume implements Built<IoK8sApiCoreV1AttachedVolume, IoK8sApiCoreV1AttachedVolumeBuilder> {
  /// DevicePath represents the device path where the volume should be available
  @BuiltValueField(wireName: r'devicePath')
  String get devicePath;

  /// Name of the attached volume
  @BuiltValueField(wireName: r'name')
  String get name;

  IoK8sApiCoreV1AttachedVolume._();

  factory IoK8sApiCoreV1AttachedVolume([void updates(IoK8sApiCoreV1AttachedVolumeBuilder b)]) = _$IoK8sApiCoreV1AttachedVolume;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1AttachedVolumeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1AttachedVolume> get serializer => _$IoK8sApiCoreV1AttachedVolumeSerializer();
}

class _$IoK8sApiCoreV1AttachedVolumeSerializer implements PrimitiveSerializer<IoK8sApiCoreV1AttachedVolume> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1AttachedVolume, _$IoK8sApiCoreV1AttachedVolume];

  @override
  final String wireName = r'IoK8sApiCoreV1AttachedVolume';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1AttachedVolume object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'devicePath';
    yield serializers.serialize(
      object.devicePath,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1AttachedVolume object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1AttachedVolumeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'devicePath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.devicePath = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1AttachedVolume deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1AttachedVolumeBuilder();
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

