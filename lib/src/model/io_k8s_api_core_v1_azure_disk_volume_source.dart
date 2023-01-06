//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_azure_disk_volume_source.g.dart';

/// AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
///
/// Properties:
/// * [cachingMode] - cachingMode is the Host Caching mode: None, Read Only, Read Write.
/// * [diskName] - diskName is the Name of the data disk in the blob storage
/// * [diskURI] - diskURI is the URI of data disk in the blob storage
/// * [fsType] - fsType is Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
/// * [kind] - kind expected values are Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared
/// * [readOnly] - readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
@BuiltValue()
abstract class IoK8sApiCoreV1AzureDiskVolumeSource implements Built<IoK8sApiCoreV1AzureDiskVolumeSource, IoK8sApiCoreV1AzureDiskVolumeSourceBuilder> {
  /// cachingMode is the Host Caching mode: None, Read Only, Read Write.
  @BuiltValueField(wireName: r'cachingMode')
  String? get cachingMode;

  /// diskName is the Name of the data disk in the blob storage
  @BuiltValueField(wireName: r'diskName')
  String get diskName;

  /// diskURI is the URI of data disk in the blob storage
  @BuiltValueField(wireName: r'diskURI')
  String get diskURI;

  /// fsType is Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
  @BuiltValueField(wireName: r'fsType')
  String? get fsType;

  /// kind expected values are Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  /// readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  IoK8sApiCoreV1AzureDiskVolumeSource._();

  factory IoK8sApiCoreV1AzureDiskVolumeSource([void updates(IoK8sApiCoreV1AzureDiskVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1AzureDiskVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1AzureDiskVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1AzureDiskVolumeSource> get serializer => _$IoK8sApiCoreV1AzureDiskVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1AzureDiskVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1AzureDiskVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1AzureDiskVolumeSource, _$IoK8sApiCoreV1AzureDiskVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1AzureDiskVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1AzureDiskVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cachingMode != null) {
      yield r'cachingMode';
      yield serializers.serialize(
        object.cachingMode,
        specifiedType: const FullType(String),
      );
    }
    yield r'diskName';
    yield serializers.serialize(
      object.diskName,
      specifiedType: const FullType(String),
    );
    yield r'diskURI';
    yield serializers.serialize(
      object.diskURI,
      specifiedType: const FullType(String),
    );
    if (object.fsType != null) {
      yield r'fsType';
      yield serializers.serialize(
        object.fsType,
        specifiedType: const FullType(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1AzureDiskVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1AzureDiskVolumeSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cachingMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cachingMode = valueDes;
          break;
        case r'diskName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.diskName = valueDes;
          break;
        case r'diskURI':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.diskURI = valueDes;
          break;
        case r'fsType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fsType = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.readOnly = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1AzureDiskVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1AzureDiskVolumeSourceBuilder();
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

