//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_gce_persistent_disk_volume_source.g.dart';

/// Represents a Persistent Disk resource in Google Compute Engine.  A GCE PD must exist before mounting to a container. The disk must also be in the same GCE project and zone as the kubelet. A GCE PD can only be mounted as read/write once or read-only many times. GCE PDs support ownership management and SELinux relabeling.
///
/// Properties:
/// * [fsType] - fsType is filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
/// * [partition] - partition is the partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
/// * [pdName] - pdName is unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
/// * [readOnly] - readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
@BuiltValue()
abstract class IoK8sApiCoreV1GCEPersistentDiskVolumeSource implements Built<IoK8sApiCoreV1GCEPersistentDiskVolumeSource, IoK8sApiCoreV1GCEPersistentDiskVolumeSourceBuilder> {
  /// fsType is filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
  @BuiltValueField(wireName: r'fsType')
  String? get fsType;

  /// partition is the partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
  @BuiltValueField(wireName: r'partition')
  int? get partition;

  /// pdName is unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
  @BuiltValueField(wireName: r'pdName')
  String get pdName;

  /// readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  IoK8sApiCoreV1GCEPersistentDiskVolumeSource._();

  factory IoK8sApiCoreV1GCEPersistentDiskVolumeSource([void updates(IoK8sApiCoreV1GCEPersistentDiskVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1GCEPersistentDiskVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1GCEPersistentDiskVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1GCEPersistentDiskVolumeSource> get serializer => _$IoK8sApiCoreV1GCEPersistentDiskVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1GCEPersistentDiskVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1GCEPersistentDiskVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1GCEPersistentDiskVolumeSource, _$IoK8sApiCoreV1GCEPersistentDiskVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1GCEPersistentDiskVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1GCEPersistentDiskVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fsType != null) {
      yield r'fsType';
      yield serializers.serialize(
        object.fsType,
        specifiedType: const FullType(String),
      );
    }
    if (object.partition != null) {
      yield r'partition';
      yield serializers.serialize(
        object.partition,
        specifiedType: const FullType(int),
      );
    }
    yield r'pdName';
    yield serializers.serialize(
      object.pdName,
      specifiedType: const FullType(String),
    );
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
    IoK8sApiCoreV1GCEPersistentDiskVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1GCEPersistentDiskVolumeSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fsType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fsType = valueDes;
          break;
        case r'partition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.partition = valueDes;
          break;
        case r'pdName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pdName = valueDes;
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
  IoK8sApiCoreV1GCEPersistentDiskVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1GCEPersistentDiskVolumeSourceBuilder();
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

