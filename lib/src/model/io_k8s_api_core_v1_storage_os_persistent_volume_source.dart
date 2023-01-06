//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_object_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_storage_os_persistent_volume_source.g.dart';

/// Represents a StorageOS persistent volume resource.
///
/// Properties:
/// * [fsType] - fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
/// * [readOnly] - readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
/// * [secretRef] 
/// * [volumeName] - volumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.
/// * [volumeNamespace] - volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to \"default\" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.
@BuiltValue()
abstract class IoK8sApiCoreV1StorageOSPersistentVolumeSource implements Built<IoK8sApiCoreV1StorageOSPersistentVolumeSource, IoK8sApiCoreV1StorageOSPersistentVolumeSourceBuilder> {
  /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
  @BuiltValueField(wireName: r'fsType')
  String? get fsType;

  /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  @BuiltValueField(wireName: r'secretRef')
  IoK8sApiCoreV1ObjectReference? get secretRef;

  /// volumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.
  @BuiltValueField(wireName: r'volumeName')
  String? get volumeName;

  /// volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to \"default\" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.
  @BuiltValueField(wireName: r'volumeNamespace')
  String? get volumeNamespace;

  IoK8sApiCoreV1StorageOSPersistentVolumeSource._();

  factory IoK8sApiCoreV1StorageOSPersistentVolumeSource([void updates(IoK8sApiCoreV1StorageOSPersistentVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1StorageOSPersistentVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1StorageOSPersistentVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1StorageOSPersistentVolumeSource> get serializer => _$IoK8sApiCoreV1StorageOSPersistentVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1StorageOSPersistentVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1StorageOSPersistentVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1StorageOSPersistentVolumeSource, _$IoK8sApiCoreV1StorageOSPersistentVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1StorageOSPersistentVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1StorageOSPersistentVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fsType != null) {
      yield r'fsType';
      yield serializers.serialize(
        object.fsType,
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
    if (object.secretRef != null) {
      yield r'secretRef';
      yield serializers.serialize(
        object.secretRef,
        specifiedType: const FullType(IoK8sApiCoreV1ObjectReference),
      );
    }
    if (object.volumeName != null) {
      yield r'volumeName';
      yield serializers.serialize(
        object.volumeName,
        specifiedType: const FullType(String),
      );
    }
    if (object.volumeNamespace != null) {
      yield r'volumeNamespace';
      yield serializers.serialize(
        object.volumeNamespace,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1StorageOSPersistentVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1StorageOSPersistentVolumeSourceBuilder result,
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
            specifiedType: const FullType(IoK8sApiCoreV1ObjectReference),
          ) as IoK8sApiCoreV1ObjectReference;
          result.secretRef.replace(valueDes);
          break;
        case r'volumeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.volumeName = valueDes;
          break;
        case r'volumeNamespace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.volumeNamespace = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1StorageOSPersistentVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1StorageOSPersistentVolumeSourceBuilder();
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

