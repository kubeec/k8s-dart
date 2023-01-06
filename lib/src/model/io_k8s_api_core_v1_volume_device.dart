//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_volume_device.g.dart';

/// volumeDevice describes a mapping of a raw block device within a container.
///
/// Properties:
/// * [devicePath] - devicePath is the path inside of the container that the device will be mapped to.
/// * [name] - name must match the name of a persistentVolumeClaim in the pod
@BuiltValue()
abstract class IoK8sApiCoreV1VolumeDevice implements Built<IoK8sApiCoreV1VolumeDevice, IoK8sApiCoreV1VolumeDeviceBuilder> {
  /// devicePath is the path inside of the container that the device will be mapped to.
  @BuiltValueField(wireName: r'devicePath')
  String get devicePath;

  /// name must match the name of a persistentVolumeClaim in the pod
  @BuiltValueField(wireName: r'name')
  String get name;

  IoK8sApiCoreV1VolumeDevice._();

  factory IoK8sApiCoreV1VolumeDevice([void updates(IoK8sApiCoreV1VolumeDeviceBuilder b)]) = _$IoK8sApiCoreV1VolumeDevice;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1VolumeDeviceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1VolumeDevice> get serializer => _$IoK8sApiCoreV1VolumeDeviceSerializer();
}

class _$IoK8sApiCoreV1VolumeDeviceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1VolumeDevice> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1VolumeDevice, _$IoK8sApiCoreV1VolumeDevice];

  @override
  final String wireName = r'IoK8sApiCoreV1VolumeDevice';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1VolumeDevice object, {
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
    IoK8sApiCoreV1VolumeDevice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1VolumeDeviceBuilder result,
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
  IoK8sApiCoreV1VolumeDevice deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1VolumeDeviceBuilder();
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

