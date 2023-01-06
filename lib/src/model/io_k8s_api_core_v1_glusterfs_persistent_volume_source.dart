//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_glusterfs_persistent_volume_source.g.dart';

/// Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
///
/// Properties:
/// * [endpoints] - endpoints is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
/// * [endpointsNamespace] - endpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
/// * [path] - path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
/// * [readOnly] - readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
@BuiltValue()
abstract class IoK8sApiCoreV1GlusterfsPersistentVolumeSource implements Built<IoK8sApiCoreV1GlusterfsPersistentVolumeSource, IoK8sApiCoreV1GlusterfsPersistentVolumeSourceBuilder> {
  /// endpoints is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  @BuiltValueField(wireName: r'endpoints')
  String get endpoints;

  /// endpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  @BuiltValueField(wireName: r'endpointsNamespace')
  String? get endpointsNamespace;

  /// path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  @BuiltValueField(wireName: r'path')
  String get path;

  /// readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  IoK8sApiCoreV1GlusterfsPersistentVolumeSource._();

  factory IoK8sApiCoreV1GlusterfsPersistentVolumeSource([void updates(IoK8sApiCoreV1GlusterfsPersistentVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1GlusterfsPersistentVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1GlusterfsPersistentVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1GlusterfsPersistentVolumeSource> get serializer => _$IoK8sApiCoreV1GlusterfsPersistentVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1GlusterfsPersistentVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1GlusterfsPersistentVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1GlusterfsPersistentVolumeSource, _$IoK8sApiCoreV1GlusterfsPersistentVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1GlusterfsPersistentVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1GlusterfsPersistentVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'endpoints';
    yield serializers.serialize(
      object.endpoints,
      specifiedType: const FullType(String),
    );
    if (object.endpointsNamespace != null) {
      yield r'endpointsNamespace';
      yield serializers.serialize(
        object.endpointsNamespace,
        specifiedType: const FullType(String),
      );
    }
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
    IoK8sApiCoreV1GlusterfsPersistentVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1GlusterfsPersistentVolumeSourceBuilder result,
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
        case r'endpointsNamespace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endpointsNamespace = valueDes;
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
  IoK8sApiCoreV1GlusterfsPersistentVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1GlusterfsPersistentVolumeSourceBuilder();
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

