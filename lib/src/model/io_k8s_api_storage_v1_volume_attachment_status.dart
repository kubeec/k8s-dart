//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_volume_error.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_storage_v1_volume_attachment_status.g.dart';

/// VolumeAttachmentStatus is the status of a VolumeAttachment request.
///
/// Properties:
/// * [attachError] 
/// * [attached] - Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
/// * [attachmentMetadata] - Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
/// * [detachError] 
@BuiltValue()
abstract class IoK8sApiStorageV1VolumeAttachmentStatus implements Built<IoK8sApiStorageV1VolumeAttachmentStatus, IoK8sApiStorageV1VolumeAttachmentStatusBuilder> {
  @BuiltValueField(wireName: r'attachError')
  IoK8sApiStorageV1VolumeError? get attachError;

  /// Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  @BuiltValueField(wireName: r'attached')
  bool get attached;

  /// Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  @BuiltValueField(wireName: r'attachmentMetadata')
  BuiltMap<String, String>? get attachmentMetadata;

  @BuiltValueField(wireName: r'detachError')
  IoK8sApiStorageV1VolumeError? get detachError;

  IoK8sApiStorageV1VolumeAttachmentStatus._();

  factory IoK8sApiStorageV1VolumeAttachmentStatus([void updates(IoK8sApiStorageV1VolumeAttachmentStatusBuilder b)]) = _$IoK8sApiStorageV1VolumeAttachmentStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiStorageV1VolumeAttachmentStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiStorageV1VolumeAttachmentStatus> get serializer => _$IoK8sApiStorageV1VolumeAttachmentStatusSerializer();
}

class _$IoK8sApiStorageV1VolumeAttachmentStatusSerializer implements PrimitiveSerializer<IoK8sApiStorageV1VolumeAttachmentStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiStorageV1VolumeAttachmentStatus, _$IoK8sApiStorageV1VolumeAttachmentStatus];

  @override
  final String wireName = r'IoK8sApiStorageV1VolumeAttachmentStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiStorageV1VolumeAttachmentStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.attachError != null) {
      yield r'attachError';
      yield serializers.serialize(
        object.attachError,
        specifiedType: const FullType(IoK8sApiStorageV1VolumeError),
      );
    }
    yield r'attached';
    yield serializers.serialize(
      object.attached,
      specifiedType: const FullType(bool),
    );
    if (object.attachmentMetadata != null) {
      yield r'attachmentMetadata';
      yield serializers.serialize(
        object.attachmentMetadata,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.detachError != null) {
      yield r'detachError';
      yield serializers.serialize(
        object.detachError,
        specifiedType: const FullType(IoK8sApiStorageV1VolumeError),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiStorageV1VolumeAttachmentStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiStorageV1VolumeAttachmentStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'attachError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiStorageV1VolumeError),
          ) as IoK8sApiStorageV1VolumeError;
          result.attachError.replace(valueDes);
          break;
        case r'attached':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.attached = valueDes;
          break;
        case r'attachmentMetadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.attachmentMetadata.replace(valueDes);
          break;
        case r'detachError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiStorageV1VolumeError),
          ) as IoK8sApiStorageV1VolumeError;
          result.detachError.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiStorageV1VolumeAttachmentStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiStorageV1VolumeAttachmentStatusBuilder();
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

