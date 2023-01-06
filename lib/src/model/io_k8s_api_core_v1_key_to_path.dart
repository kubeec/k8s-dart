//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_key_to_path.g.dart';

/// Maps a string key to a path within a volume.
///
/// Properties:
/// * [key] - key is the key to project.
/// * [mode] - mode is Optional: mode bits used to set permissions on this file. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
/// * [path] - path is the relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.
@BuiltValue()
abstract class IoK8sApiCoreV1KeyToPath implements Built<IoK8sApiCoreV1KeyToPath, IoK8sApiCoreV1KeyToPathBuilder> {
  /// key is the key to project.
  @BuiltValueField(wireName: r'key')
  String get key;

  /// mode is Optional: mode bits used to set permissions on this file. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  @BuiltValueField(wireName: r'mode')
  int? get mode;

  /// path is the relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.
  @BuiltValueField(wireName: r'path')
  String get path;

  IoK8sApiCoreV1KeyToPath._();

  factory IoK8sApiCoreV1KeyToPath([void updates(IoK8sApiCoreV1KeyToPathBuilder b)]) = _$IoK8sApiCoreV1KeyToPath;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1KeyToPathBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1KeyToPath> get serializer => _$IoK8sApiCoreV1KeyToPathSerializer();
}

class _$IoK8sApiCoreV1KeyToPathSerializer implements PrimitiveSerializer<IoK8sApiCoreV1KeyToPath> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1KeyToPath, _$IoK8sApiCoreV1KeyToPath];

  @override
  final String wireName = r'IoK8sApiCoreV1KeyToPath';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1KeyToPath object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
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
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1KeyToPath object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1KeyToPathBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1KeyToPath deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1KeyToPathBuilder();
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

