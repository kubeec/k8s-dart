//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_local_object_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_scale_io_volume_source.g.dart';

/// ScaleIOVolumeSource represents a persistent ScaleIO volume
///
/// Properties:
/// * [fsType] - fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Default is \"xfs\".
/// * [gateway] - gateway is the host address of the ScaleIO API Gateway.
/// * [protectionDomain] - protectionDomain is the name of the ScaleIO Protection Domain for the configured storage.
/// * [readOnly] - readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
/// * [secretRef] 
/// * [sslEnabled] - sslEnabled Flag enable/disable SSL communication with Gateway, default false
/// * [storageMode] - storageMode indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.
/// * [storagePool] - storagePool is the ScaleIO Storage Pool associated with the protection domain.
/// * [system] - system is the name of the storage system as configured in ScaleIO.
/// * [volumeName] - volumeName is the name of a volume already created in the ScaleIO system that is associated with this volume source.
@BuiltValue()
abstract class IoK8sApiCoreV1ScaleIOVolumeSource implements Built<IoK8sApiCoreV1ScaleIOVolumeSource, IoK8sApiCoreV1ScaleIOVolumeSourceBuilder> {
  /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Default is \"xfs\".
  @BuiltValueField(wireName: r'fsType')
  String? get fsType;

  /// gateway is the host address of the ScaleIO API Gateway.
  @BuiltValueField(wireName: r'gateway')
  String get gateway;

  /// protectionDomain is the name of the ScaleIO Protection Domain for the configured storage.
  @BuiltValueField(wireName: r'protectionDomain')
  String? get protectionDomain;

  /// readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  @BuiltValueField(wireName: r'secretRef')
  IoK8sApiCoreV1LocalObjectReference get secretRef;

  /// sslEnabled Flag enable/disable SSL communication with Gateway, default false
  @BuiltValueField(wireName: r'sslEnabled')
  bool? get sslEnabled;

  /// storageMode indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.
  @BuiltValueField(wireName: r'storageMode')
  String? get storageMode;

  /// storagePool is the ScaleIO Storage Pool associated with the protection domain.
  @BuiltValueField(wireName: r'storagePool')
  String? get storagePool;

  /// system is the name of the storage system as configured in ScaleIO.
  @BuiltValueField(wireName: r'system')
  String get system;

  /// volumeName is the name of a volume already created in the ScaleIO system that is associated with this volume source.
  @BuiltValueField(wireName: r'volumeName')
  String? get volumeName;

  IoK8sApiCoreV1ScaleIOVolumeSource._();

  factory IoK8sApiCoreV1ScaleIOVolumeSource([void updates(IoK8sApiCoreV1ScaleIOVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1ScaleIOVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ScaleIOVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ScaleIOVolumeSource> get serializer => _$IoK8sApiCoreV1ScaleIOVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1ScaleIOVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ScaleIOVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ScaleIOVolumeSource, _$IoK8sApiCoreV1ScaleIOVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1ScaleIOVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ScaleIOVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fsType != null) {
      yield r'fsType';
      yield serializers.serialize(
        object.fsType,
        specifiedType: const FullType(String),
      );
    }
    yield r'gateway';
    yield serializers.serialize(
      object.gateway,
      specifiedType: const FullType(String),
    );
    if (object.protectionDomain != null) {
      yield r'protectionDomain';
      yield serializers.serialize(
        object.protectionDomain,
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
    yield r'secretRef';
    yield serializers.serialize(
      object.secretRef,
      specifiedType: const FullType(IoK8sApiCoreV1LocalObjectReference),
    );
    if (object.sslEnabled != null) {
      yield r'sslEnabled';
      yield serializers.serialize(
        object.sslEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.storageMode != null) {
      yield r'storageMode';
      yield serializers.serialize(
        object.storageMode,
        specifiedType: const FullType(String),
      );
    }
    if (object.storagePool != null) {
      yield r'storagePool';
      yield serializers.serialize(
        object.storagePool,
        specifiedType: const FullType(String),
      );
    }
    yield r'system';
    yield serializers.serialize(
      object.system,
      specifiedType: const FullType(String),
    );
    if (object.volumeName != null) {
      yield r'volumeName';
      yield serializers.serialize(
        object.volumeName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ScaleIOVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ScaleIOVolumeSourceBuilder result,
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
        case r'gateway':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gateway = valueDes;
          break;
        case r'protectionDomain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.protectionDomain = valueDes;
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
        case r'sslEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sslEnabled = valueDes;
          break;
        case r'storageMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.storageMode = valueDes;
          break;
        case r'storagePool':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.storagePool = valueDes;
          break;
        case r'system':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.system = valueDes;
          break;
        case r'volumeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.volumeName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ScaleIOVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ScaleIOVolumeSourceBuilder();
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

