//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_persistent_volume_spec.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_storage_v1_volume_attachment_source.g.dart';

/// VolumeAttachmentSource represents a volume that should be attached. Right now only PersistenVolumes can be attached via external attacher, in future we may allow also inline volumes in pods. Exactly one member can be set.
///
/// Properties:
/// * [inlineVolumeSpec] 
/// * [persistentVolumeName] - Name of the persistent volume to attach.
@BuiltValue()
abstract class IoK8sApiStorageV1VolumeAttachmentSource implements Built<IoK8sApiStorageV1VolumeAttachmentSource, IoK8sApiStorageV1VolumeAttachmentSourceBuilder> {
  @BuiltValueField(wireName: r'inlineVolumeSpec')
  IoK8sApiCoreV1PersistentVolumeSpec? get inlineVolumeSpec;

  /// Name of the persistent volume to attach.
  @BuiltValueField(wireName: r'persistentVolumeName')
  String? get persistentVolumeName;

  IoK8sApiStorageV1VolumeAttachmentSource._();

  factory IoK8sApiStorageV1VolumeAttachmentSource([void updates(IoK8sApiStorageV1VolumeAttachmentSourceBuilder b)]) = _$IoK8sApiStorageV1VolumeAttachmentSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiStorageV1VolumeAttachmentSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiStorageV1VolumeAttachmentSource> get serializer => _$IoK8sApiStorageV1VolumeAttachmentSourceSerializer();
}

class _$IoK8sApiStorageV1VolumeAttachmentSourceSerializer implements PrimitiveSerializer<IoK8sApiStorageV1VolumeAttachmentSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiStorageV1VolumeAttachmentSource, _$IoK8sApiStorageV1VolumeAttachmentSource];

  @override
  final String wireName = r'IoK8sApiStorageV1VolumeAttachmentSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiStorageV1VolumeAttachmentSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.inlineVolumeSpec != null) {
      yield r'inlineVolumeSpec';
      yield serializers.serialize(
        object.inlineVolumeSpec,
        specifiedType: const FullType(IoK8sApiCoreV1PersistentVolumeSpec),
      );
    }
    if (object.persistentVolumeName != null) {
      yield r'persistentVolumeName';
      yield serializers.serialize(
        object.persistentVolumeName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiStorageV1VolumeAttachmentSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiStorageV1VolumeAttachmentSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'inlineVolumeSpec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1PersistentVolumeSpec),
          ) as IoK8sApiCoreV1PersistentVolumeSpec;
          result.inlineVolumeSpec.replace(valueDes);
          break;
        case r'persistentVolumeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.persistentVolumeName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiStorageV1VolumeAttachmentSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiStorageV1VolumeAttachmentSourceBuilder();
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

