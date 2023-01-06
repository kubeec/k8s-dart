//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_local_object_reference.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_flex_volume_source.g.dart';

/// FlexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin.
///
/// Properties:
/// * [driver] - driver is the name of the driver to use for this volume.
/// * [fsType] - fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default filesystem depends on FlexVolume script.
/// * [options] - options is Optional: this field holds extra command options if any.
/// * [readOnly] - readOnly is Optional: defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
/// * [secretRef] 
@BuiltValue()
abstract class IoK8sApiCoreV1FlexVolumeSource implements Built<IoK8sApiCoreV1FlexVolumeSource, IoK8sApiCoreV1FlexVolumeSourceBuilder> {
  /// driver is the name of the driver to use for this volume.
  @BuiltValueField(wireName: r'driver')
  String get driver;

  /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default filesystem depends on FlexVolume script.
  @BuiltValueField(wireName: r'fsType')
  String? get fsType;

  /// options is Optional: this field holds extra command options if any.
  @BuiltValueField(wireName: r'options')
  BuiltMap<String, String>? get options;

  /// readOnly is Optional: defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  @BuiltValueField(wireName: r'secretRef')
  IoK8sApiCoreV1LocalObjectReference? get secretRef;

  IoK8sApiCoreV1FlexVolumeSource._();

  factory IoK8sApiCoreV1FlexVolumeSource([void updates(IoK8sApiCoreV1FlexVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1FlexVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1FlexVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1FlexVolumeSource> get serializer => _$IoK8sApiCoreV1FlexVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1FlexVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1FlexVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1FlexVolumeSource, _$IoK8sApiCoreV1FlexVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1FlexVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1FlexVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'driver';
    yield serializers.serialize(
      object.driver,
      specifiedType: const FullType(String),
    );
    if (object.fsType != null) {
      yield r'fsType';
      yield serializers.serialize(
        object.fsType,
        specifiedType: const FullType(String),
      );
    }
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.secretRef != null) {
      yield r'secretRef';
      yield serializers.serialize(
        object.secretRef,
        specifiedType: const FullType(IoK8sApiCoreV1LocalObjectReference),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1FlexVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1FlexVolumeSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'driver':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.driver = valueDes;
          break;
        case r'fsType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fsType = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.options.replace(valueDes);
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.readOnly = valueDes;
          break;
        case r'secretRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1LocalObjectReference),
          ) as IoK8sApiCoreV1LocalObjectReference;
          result.secretRef.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1FlexVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1FlexVolumeSourceBuilder();
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

