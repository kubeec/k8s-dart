//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_glusterfs_volume_source.g.dart';

/// Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
///
/// Properties:
/// * [endpoints] - endpoints is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
/// * [path] - path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
/// * [readOnly] - readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
@BuiltValue()
abstract class IoK8sApiCoreV1GlusterfsVolumeSource implements Built<IoK8sApiCoreV1GlusterfsVolumeSource, IoK8sApiCoreV1GlusterfsVolumeSourceBuilder> {
  /// endpoints is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  @BuiltValueField(wireName: r'endpoints')
  String get endpoints;

  /// path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  @BuiltValueField(wireName: r'path')
  String get path;

  /// readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  IoK8sApiCoreV1GlusterfsVolumeSource._();

  factory IoK8sApiCoreV1GlusterfsVolumeSource([void updates(IoK8sApiCoreV1GlusterfsVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1GlusterfsVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1GlusterfsVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1GlusterfsVolumeSource> get serializer => _$IoK8sApiCoreV1GlusterfsVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1GlusterfsVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1GlusterfsVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1GlusterfsVolumeSource, _$IoK8sApiCoreV1GlusterfsVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1GlusterfsVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1GlusterfsVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'endpoints';
    yield serializers.serialize(
      object.endpoints,
      specifiedType: const FullType(String),
    );
    yield r'path';
    yield serializers.serialize(
      object.path,
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
    IoK8sApiCoreV1GlusterfsVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1GlusterfsVolumeSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'endpoints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endpoints = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
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
  IoK8sApiCoreV1GlusterfsVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1GlusterfsVolumeSourceBuilder();
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

