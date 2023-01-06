//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_config_map_env_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_secret_env_source.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_env_from_source.g.dart';

/// EnvFromSource represents the source of a set of ConfigMaps
///
/// Properties:
/// * [configMapRef] 
/// * [prefix] - An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
/// * [secretRef] 
@BuiltValue()
abstract class IoK8sApiCoreV1EnvFromSource implements Built<IoK8sApiCoreV1EnvFromSource, IoK8sApiCoreV1EnvFromSourceBuilder> {
  @BuiltValueField(wireName: r'configMapRef')
  IoK8sApiCoreV1ConfigMapEnvSource? get configMapRef;

  /// An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
  @BuiltValueField(wireName: r'prefix')
  String? get prefix;

  @BuiltValueField(wireName: r'secretRef')
  IoK8sApiCoreV1SecretEnvSource? get secretRef;

  IoK8sApiCoreV1EnvFromSource._();

  factory IoK8sApiCoreV1EnvFromSource([void updates(IoK8sApiCoreV1EnvFromSourceBuilder b)]) = _$IoK8sApiCoreV1EnvFromSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1EnvFromSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1EnvFromSource> get serializer => _$IoK8sApiCoreV1EnvFromSourceSerializer();
}

class _$IoK8sApiCoreV1EnvFromSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1EnvFromSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1EnvFromSource, _$IoK8sApiCoreV1EnvFromSource];

  @override
  final String wireName = r'IoK8sApiCoreV1EnvFromSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1EnvFromSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.configMapRef != null) {
      yield r'configMapRef';
      yield serializers.serialize(
        object.configMapRef,
        specifiedType: const FullType(IoK8sApiCoreV1ConfigMapEnvSource),
      );
    }
    if (object.prefix != null) {
      yield r'prefix';
      yield serializers.serialize(
        object.prefix,
        specifiedType: const FullType(String),
      );
    }
    if (object.secretRef != null) {
      yield r'secretRef';
      yield serializers.serialize(
        object.secretRef,
        specifiedType: const FullType(IoK8sApiCoreV1SecretEnvSource),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1EnvFromSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1EnvFromSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'configMapRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ConfigMapEnvSource),
          ) as IoK8sApiCoreV1ConfigMapEnvSource;
          result.configMapRef.replace(valueDes);
          break;
        case r'prefix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.prefix = valueDes;
          break;
        case r'secretRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1SecretEnvSource),
          ) as IoK8sApiCoreV1SecretEnvSource;
          result.secretRef.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1EnvFromSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1EnvFromSourceBuilder();
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

