//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_host_path_volume_source.g.dart';

/// Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
///
/// Properties:
/// * [path] - path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
/// * [type] - type for HostPath Volume Defaults to \"\" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
@BuiltValue()
abstract class IoK8sApiCoreV1HostPathVolumeSource implements Built<IoK8sApiCoreV1HostPathVolumeSource, IoK8sApiCoreV1HostPathVolumeSourceBuilder> {
  /// path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  @BuiltValueField(wireName: r'path')
  String get path;

  /// type for HostPath Volume Defaults to \"\" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  @BuiltValueField(wireName: r'type')
  String? get type;

  IoK8sApiCoreV1HostPathVolumeSource._();

  factory IoK8sApiCoreV1HostPathVolumeSource([void updates(IoK8sApiCoreV1HostPathVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1HostPathVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1HostPathVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1HostPathVolumeSource> get serializer => _$IoK8sApiCoreV1HostPathVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1HostPathVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1HostPathVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1HostPathVolumeSource, _$IoK8sApiCoreV1HostPathVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1HostPathVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1HostPathVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1HostPathVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1HostPathVolumeSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1HostPathVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1HostPathVolumeSourceBuilder();
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

