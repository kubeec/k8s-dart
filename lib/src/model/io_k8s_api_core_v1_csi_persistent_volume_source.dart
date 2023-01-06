//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_secret_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_csi_persistent_volume_source.g.dart';

/// Represents storage that is managed by an external CSI volume driver (Beta feature)
///
/// Properties:
/// * [controllerExpandSecretRef] 
/// * [controllerPublishSecretRef] 
/// * [driver] - driver is the name of the driver to use for this volume. Required.
/// * [fsType] - fsType to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\".
/// * [nodeExpandSecretRef] 
/// * [nodePublishSecretRef] 
/// * [nodeStageSecretRef] 
/// * [readOnly] - readOnly value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write).
/// * [volumeAttributes] - volumeAttributes of the volume to publish.
/// * [volumeHandle] - volumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.
@BuiltValue()
abstract class IoK8sApiCoreV1CSIPersistentVolumeSource implements Built<IoK8sApiCoreV1CSIPersistentVolumeSource, IoK8sApiCoreV1CSIPersistentVolumeSourceBuilder> {
  @BuiltValueField(wireName: r'controllerExpandSecretRef')
  IoK8sApiCoreV1SecretReference? get controllerExpandSecretRef;

  @BuiltValueField(wireName: r'controllerPublishSecretRef')
  IoK8sApiCoreV1SecretReference? get controllerPublishSecretRef;

  /// driver is the name of the driver to use for this volume. Required.
  @BuiltValueField(wireName: r'driver')
  String get driver;

  /// fsType to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\".
  @BuiltValueField(wireName: r'fsType')
  String? get fsType;

  @BuiltValueField(wireName: r'nodeExpandSecretRef')
  IoK8sApiCoreV1SecretReference? get nodeExpandSecretRef;

  @BuiltValueField(wireName: r'nodePublishSecretRef')
  IoK8sApiCoreV1SecretReference? get nodePublishSecretRef;

  @BuiltValueField(wireName: r'nodeStageSecretRef')
  IoK8sApiCoreV1SecretReference? get nodeStageSecretRef;

  /// readOnly value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write).
  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  /// volumeAttributes of the volume to publish.
  @BuiltValueField(wireName: r'volumeAttributes')
  BuiltMap<String, String>? get volumeAttributes;

  /// volumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.
  @BuiltValueField(wireName: r'volumeHandle')
  String get volumeHandle;

  IoK8sApiCoreV1CSIPersistentVolumeSource._();

  factory IoK8sApiCoreV1CSIPersistentVolumeSource([void updates(IoK8sApiCoreV1CSIPersistentVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1CSIPersistentVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1CSIPersistentVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1CSIPersistentVolumeSource> get serializer => _$IoK8sApiCoreV1CSIPersistentVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1CSIPersistentVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1CSIPersistentVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1CSIPersistentVolumeSource, _$IoK8sApiCoreV1CSIPersistentVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1CSIPersistentVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1CSIPersistentVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.controllerExpandSecretRef != null) {
      yield r'controllerExpandSecretRef';
      yield serializers.serialize(
        object.controllerExpandSecretRef,
        specifiedType: const FullType(IoK8sApiCoreV1SecretReference),
      );
    }
    if (object.controllerPublishSecretRef != null) {
      yield r'controllerPublishSecretRef';
      yield serializers.serialize(
        object.controllerPublishSecretRef,
        specifiedType: const FullType(IoK8sApiCoreV1SecretReference),
      );
    }
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
    if (object.nodeExpandSecretRef != null) {
      yield r'nodeExpandSecretRef';
      yield serializers.serialize(
        object.nodeExpandSecretRef,
        specifiedType: const FullType(IoK8sApiCoreV1SecretReference),
      );
    }
    if (object.nodePublishSecretRef != null) {
      yield r'nodePublishSecretRef';
      yield serializers.serialize(
        object.nodePublishSecretRef,
        specifiedType: const FullType(IoK8sApiCoreV1SecretReference),
      );
    }
    if (object.nodeStageSecretRef != null) {
      yield r'nodeStageSecretRef';
      yield serializers.serialize(
        object.nodeStageSecretRef,
        specifiedType: const FullType(IoK8sApiCoreV1SecretReference),
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
    yield r'volumeHandle';
    yield serializers.serialize(
      object.volumeHandle,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1CSIPersistentVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1CSIPersistentVolumeSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'controllerExpandSecretRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1SecretReference),
          ) as IoK8sApiCoreV1SecretReference;
          result.controllerExpandSecretRef.replace(valueDes);
          break;
        case r'controllerPublishSecretRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1SecretReference),
          ) as IoK8sApiCoreV1SecretReference;
          result.controllerPublishSecretRef.replace(valueDes);
          break;
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
        case r'nodeExpandSecretRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1SecretReference),
          ) as IoK8sApiCoreV1SecretReference;
          result.nodeExpandSecretRef.replace(valueDes);
          break;
        case r'nodePublishSecretRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1SecretReference),
          ) as IoK8sApiCoreV1SecretReference;
          result.nodePublishSecretRef.replace(valueDes);
          break;
        case r'nodeStageSecretRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1SecretReference),
          ) as IoK8sApiCoreV1SecretReference;
          result.nodeStageSecretRef.replace(valueDes);
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
        case r'volumeHandle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.volumeHandle = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1CSIPersistentVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1CSIPersistentVolumeSourceBuilder();
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

