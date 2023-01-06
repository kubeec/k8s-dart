//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_local_object_reference.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_csi_volume_source.g.dart';

/// Represents a source location of a volume to mount, managed by an external CSI driver
///
/// Properties:
/// * [driver] - driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.
/// * [fsType] - fsType to mount. Ex. \"ext4\", \"xfs\", \"ntfs\". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply.
/// * [nodePublishSecretRef] 
/// * [readOnly] - readOnly specifies a read-only configuration for the volume. Defaults to false (read/write).
/// * [volumeAttributes] - volumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values.
@BuiltValue()
abstract class IoK8sApiCoreV1CSIVolumeSource implements Built<IoK8sApiCoreV1CSIVolumeSource, IoK8sApiCoreV1CSIVolumeSourceBuilder> {
  /// driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.
  @BuiltValueField(wireName: r'driver')
  String get driver;

  /// fsType to mount. Ex. \"ext4\", \"xfs\", \"ntfs\". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply.
  @BuiltValueField(wireName: r'fsType')
  String? get fsType;

  @BuiltValueField(wireName: r'nodePublishSecretRef')
  IoK8sApiCoreV1LocalObjectReference? get nodePublishSecretRef;

  /// readOnly specifies a read-only configuration for the volume. Defaults to false (read/write).
  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  /// volumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values.
  @BuiltValueField(wireName: r'volumeAttributes')
  BuiltMap<String, String>? get volumeAttributes;

  IoK8sApiCoreV1CSIVolumeSource._();

  factory IoK8sApiCoreV1CSIVolumeSource([void updates(IoK8sApiCoreV1CSIVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1CSIVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1CSIVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1CSIVolumeSource> get serializer => _$IoK8sApiCoreV1CSIVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1CSIVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1CSIVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1CSIVolumeSource, _$IoK8sApiCoreV1CSIVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1CSIVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1CSIVolumeSource object, {
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
    if (object.nodePublishSecretRef != null) {
      yield r'nodePublishSecretRef';
      yield serializers.serialize(
        object.nodePublishSecretRef,
        specifiedType: const FullType(IoK8sApiCoreV1LocalObjectReference),
      );
    }
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.volumeAttributes != null) {
      yield r'volumeAttributes';
      yield serializers.serialize(
        object.volumeAttributes,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1CSIVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1CSIVolumeSourceBuilder result,
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
        case r'nodePublishSecretRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1LocalObjectReference),
          ) as IoK8sApiCoreV1LocalObjectReference;
          result.nodePublishSecretRef.replace(valueDes);
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.readOnly = valueDes;
          break;
        case r'volumeAttributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.volumeAttributes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1CSIVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1CSIVolumeSourceBuilder();
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

