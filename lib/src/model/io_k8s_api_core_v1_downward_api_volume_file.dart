//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_resource_field_selector.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_object_field_selector.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_downward_api_volume_file.g.dart';

/// DownwardAPIVolumeFile represents information to create the file containing the pod field
///
/// Properties:
/// * [fieldRef] 
/// * [mode] - Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
/// * [path] - Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'
/// * [resourceFieldRef] 
@BuiltValue()
abstract class IoK8sApiCoreV1DownwardAPIVolumeFile implements Built<IoK8sApiCoreV1DownwardAPIVolumeFile, IoK8sApiCoreV1DownwardAPIVolumeFileBuilder> {
  @BuiltValueField(wireName: r'fieldRef')
  IoK8sApiCoreV1ObjectFieldSelector? get fieldRef;

  /// Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  @BuiltValueField(wireName: r'mode')
  int? get mode;

  /// Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'
  @BuiltValueField(wireName: r'path')
  String get path;

  @BuiltValueField(wireName: r'resourceFieldRef')
  IoK8sApiCoreV1ResourceFieldSelector? get resourceFieldRef;

  IoK8sApiCoreV1DownwardAPIVolumeFile._();

  factory IoK8sApiCoreV1DownwardAPIVolumeFile([void updates(IoK8sApiCoreV1DownwardAPIVolumeFileBuilder b)]) = _$IoK8sApiCoreV1DownwardAPIVolumeFile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1DownwardAPIVolumeFileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1DownwardAPIVolumeFile> get serializer => _$IoK8sApiCoreV1DownwardAPIVolumeFileSerializer();
}

class _$IoK8sApiCoreV1DownwardAPIVolumeFileSerializer implements PrimitiveSerializer<IoK8sApiCoreV1DownwardAPIVolumeFile> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1DownwardAPIVolumeFile, _$IoK8sApiCoreV1DownwardAPIVolumeFile];

  @override
  final String wireName = r'IoK8sApiCoreV1DownwardAPIVolumeFile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1DownwardAPIVolumeFile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fieldRef != null) {
      yield r'fieldRef';
      yield serializers.serialize(
        object.fieldRef,
        specifiedType: const FullType(IoK8sApiCoreV1ObjectFieldSelector),
      );
    }
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(int),
      );
    }
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    if (object.resourceFieldRef != null) {
      yield r'resourceFieldRef';
      yield serializers.serialize(
        object.resourceFieldRef,
        specifiedType: const FullType(IoK8sApiCoreV1ResourceFieldSelector),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1DownwardAPIVolumeFile object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1DownwardAPIVolumeFileBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fieldRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ObjectFieldSelector),
          ) as IoK8sApiCoreV1ObjectFieldSelector;
          result.fieldRef.replace(valueDes);
          break;
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mode = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'resourceFieldRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ResourceFieldSelector),
          ) as IoK8sApiCoreV1ResourceFieldSelector;
          result.resourceFieldRef.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1DownwardAPIVolumeFile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1DownwardAPIVolumeFileBuilder();
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

