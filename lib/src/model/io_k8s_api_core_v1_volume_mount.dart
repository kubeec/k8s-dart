//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_volume_mount.g.dart';

/// VolumeMount describes a mounting of a Volume within a container.
///
/// Properties:
/// * [mountPath] - Path within the container at which the volume should be mounted.  Must not contain ':'.
/// * [mountPropagation] - mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10.
/// * [name] - This must match the Name of a Volume.
/// * [readOnly] - Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.
/// * [subPath] - Path within the volume from which the container's volume should be mounted. Defaults to \"\" (volume's root).
/// * [subPathExpr] - Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to \"\" (volume's root). SubPathExpr and SubPath are mutually exclusive.
@BuiltValue()
abstract class IoK8sApiCoreV1VolumeMount implements Built<IoK8sApiCoreV1VolumeMount, IoK8sApiCoreV1VolumeMountBuilder> {
  /// Path within the container at which the volume should be mounted.  Must not contain ':'.
  @BuiltValueField(wireName: r'mountPath')
  String get mountPath;

  /// mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10.
  @BuiltValueField(wireName: r'mountPropagation')
  String? get mountPropagation;

  /// This must match the Name of a Volume.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.
  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  /// Path within the volume from which the container's volume should be mounted. Defaults to \"\" (volume's root).
  @BuiltValueField(wireName: r'subPath')
  String? get subPath;

  /// Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to \"\" (volume's root). SubPathExpr and SubPath are mutually exclusive.
  @BuiltValueField(wireName: r'subPathExpr')
  String? get subPathExpr;

  IoK8sApiCoreV1VolumeMount._();

  factory IoK8sApiCoreV1VolumeMount([void updates(IoK8sApiCoreV1VolumeMountBuilder b)]) = _$IoK8sApiCoreV1VolumeMount;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1VolumeMountBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1VolumeMount> get serializer => _$IoK8sApiCoreV1VolumeMountSerializer();
}

class _$IoK8sApiCoreV1VolumeMountSerializer implements PrimitiveSerializer<IoK8sApiCoreV1VolumeMount> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1VolumeMount, _$IoK8sApiCoreV1VolumeMount];

  @override
  final String wireName = r'IoK8sApiCoreV1VolumeMount';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1VolumeMount object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mountPath';
    yield serializers.serialize(
      object.mountPath,
      specifiedType: const FullType(String),
    );
    if (object.mountPropagation != null) {
      yield r'mountPropagation';
      yield serializers.serialize(
        object.mountPropagation,
        specifiedType: const FullType(String),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.subPath != null) {
      yield r'subPath';
      yield serializers.serialize(
        object.subPath,
        specifiedType: const FullType(String),
      );
    }
    if (object.subPathExpr != null) {
      yield r'subPathExpr';
      yield serializers.serialize(
        object.subPathExpr,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1VolumeMount object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1VolumeMountBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mountPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mountPath = valueDes;
          break;
        case r'mountPropagation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mountPropagation = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.readOnly = valueDes;
          break;
        case r'subPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subPath = valueDes;
          break;
        case r'subPathExpr':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subPathExpr = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1VolumeMount deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1VolumeMountBuilder();
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

