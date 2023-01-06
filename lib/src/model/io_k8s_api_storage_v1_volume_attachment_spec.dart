//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_storage_v1_volume_attachment_source.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_storage_v1_volume_attachment_spec.g.dart';

/// VolumeAttachmentSpec is the specification of a VolumeAttachment request.
///
/// Properties:
/// * [attacher] - Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
/// * [nodeName] - The node that the volume should be attached to.
/// * [source_] 
@BuiltValue()
abstract class IoK8sApiStorageV1VolumeAttachmentSpec implements Built<IoK8sApiStorageV1VolumeAttachmentSpec, IoK8sApiStorageV1VolumeAttachmentSpecBuilder> {
  /// Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
  @BuiltValueField(wireName: r'attacher')
  String get attacher;

  /// The node that the volume should be attached to.
  @BuiltValueField(wireName: r'nodeName')
  String get nodeName;

  @BuiltValueField(wireName: r'source')
  IoK8sApiStorageV1VolumeAttachmentSource get source_;

  IoK8sApiStorageV1VolumeAttachmentSpec._();

  factory IoK8sApiStorageV1VolumeAttachmentSpec([void updates(IoK8sApiStorageV1VolumeAttachmentSpecBuilder b)]) = _$IoK8sApiStorageV1VolumeAttachmentSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiStorageV1VolumeAttachmentSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiStorageV1VolumeAttachmentSpec> get serializer => _$IoK8sApiStorageV1VolumeAttachmentSpecSerializer();
}

class _$IoK8sApiStorageV1VolumeAttachmentSpecSerializer implements PrimitiveSerializer<IoK8sApiStorageV1VolumeAttachmentSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiStorageV1VolumeAttachmentSpec, _$IoK8sApiStorageV1VolumeAttachmentSpec];

  @override
  final String wireName = r'IoK8sApiStorageV1VolumeAttachmentSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiStorageV1VolumeAttachmentSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'attacher';
    yield serializers.serialize(
      object.attacher,
      specifiedType: const FullType(String),
    );
    yield r'nodeName';
    yield serializers.serialize(
      object.nodeName,
      specifiedType: const FullType(String),
    );
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(IoK8sApiStorageV1VolumeAttachmentSource),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiStorageV1VolumeAttachmentSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiStorageV1VolumeAttachmentSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'attacher':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.attacher = valueDes;
          break;
        case r'nodeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nodeName = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiStorageV1VolumeAttachmentSource),
          ) as IoK8sApiStorageV1VolumeAttachmentSource;
          result.source_.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiStorageV1VolumeAttachmentSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiStorageV1VolumeAttachmentSpecBuilder();
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

