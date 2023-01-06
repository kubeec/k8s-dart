//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_local_object_reference.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_ceph_fs_volume_source.g.dart';

/// Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
///
/// Properties:
/// * [monitors] - monitors is Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
/// * [path] - path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /
/// * [readOnly] - readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
/// * [secretFile] - secretFile is Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
/// * [secretRef] 
/// * [user] - user is optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
@BuiltValue()
abstract class IoK8sApiCoreV1CephFSVolumeSource implements Built<IoK8sApiCoreV1CephFSVolumeSource, IoK8sApiCoreV1CephFSVolumeSourceBuilder> {
  /// monitors is Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  @BuiltValueField(wireName: r'monitors')
  BuiltList<String> get monitors;

  /// path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /
  @BuiltValueField(wireName: r'path')
  String? get path;

  /// readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  /// secretFile is Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  @BuiltValueField(wireName: r'secretFile')
  String? get secretFile;

  @BuiltValueField(wireName: r'secretRef')
  IoK8sApiCoreV1LocalObjectReference? get secretRef;

  /// user is optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  @BuiltValueField(wireName: r'user')
  String? get user;

  IoK8sApiCoreV1CephFSVolumeSource._();

  factory IoK8sApiCoreV1CephFSVolumeSource([void updates(IoK8sApiCoreV1CephFSVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1CephFSVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1CephFSVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1CephFSVolumeSource> get serializer => _$IoK8sApiCoreV1CephFSVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1CephFSVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1CephFSVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1CephFSVolumeSource, _$IoK8sApiCoreV1CephFSVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1CephFSVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1CephFSVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'monitors';
    yield serializers.serialize(
      object.monitors,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
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
    if (object.secretFile != null) {
      yield r'secretFile';
      yield serializers.serialize(
        object.secretFile,
        specifiedType: const FullType(String),
      );
    }
    if (object.secretRef != null) {
      yield r'secretRef';
      yield serializers.serialize(
        object.secretRef,
        specifiedType: const FullType(IoK8sApiCoreV1LocalObjectReference),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1CephFSVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1CephFSVolumeSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'monitors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.monitors.replace(valueDes);
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
        case r'secretFile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.secretFile = valueDes;
          break;
        case r'secretRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1LocalObjectReference),
          ) as IoK8sApiCoreV1LocalObjectReference;
          result.secretRef.replace(valueDes);
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.user = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1CephFSVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1CephFSVolumeSourceBuilder();
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

