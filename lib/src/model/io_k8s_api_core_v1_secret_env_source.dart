//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_secret_env_source.g.dart';

/// SecretEnvSource selects a Secret to populate the environment variables with.  The contents of the target Secret's Data field will represent the key-value pairs as environment variables.
///
/// Properties:
/// * [name] - Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
/// * [optional] - Specify whether the Secret must be defined
@BuiltValue()
abstract class IoK8sApiCoreV1SecretEnvSource implements Built<IoK8sApiCoreV1SecretEnvSource, IoK8sApiCoreV1SecretEnvSourceBuilder> {
  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Specify whether the Secret must be defined
  @BuiltValueField(wireName: r'optional')
  bool? get optional;

  IoK8sApiCoreV1SecretEnvSource._();

  factory IoK8sApiCoreV1SecretEnvSource([void updates(IoK8sApiCoreV1SecretEnvSourceBuilder b)]) = _$IoK8sApiCoreV1SecretEnvSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1SecretEnvSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1SecretEnvSource> get serializer => _$IoK8sApiCoreV1SecretEnvSourceSerializer();
}

class _$IoK8sApiCoreV1SecretEnvSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1SecretEnvSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1SecretEnvSource, _$IoK8sApiCoreV1SecretEnvSource];

  @override
  final String wireName = r'IoK8sApiCoreV1SecretEnvSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1SecretEnvSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.optional != null) {
      yield r'optional';
      yield serializers.serialize(
        object.optional,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1SecretEnvSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1SecretEnvSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'optional':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.optional = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1SecretEnvSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1SecretEnvSourceBuilder();
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

