//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_config_map_env_source.g.dart';

/// ConfigMapEnvSource selects a ConfigMap to populate the environment variables with.  The contents of the target ConfigMap's Data field will represent the key-value pairs as environment variables.
///
/// Properties:
/// * [name] - Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
/// * [optional] - Specify whether the ConfigMap must be defined
@BuiltValue()
abstract class IoK8sApiCoreV1ConfigMapEnvSource implements Built<IoK8sApiCoreV1ConfigMapEnvSource, IoK8sApiCoreV1ConfigMapEnvSourceBuilder> {
  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Specify whether the ConfigMap must be defined
  @BuiltValueField(wireName: r'optional')
  bool? get optional;

  IoK8sApiCoreV1ConfigMapEnvSource._();

  factory IoK8sApiCoreV1ConfigMapEnvSource([void updates(IoK8sApiCoreV1ConfigMapEnvSourceBuilder b)]) = _$IoK8sApiCoreV1ConfigMapEnvSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ConfigMapEnvSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ConfigMapEnvSource> get serializer => _$IoK8sApiCoreV1ConfigMapEnvSourceSerializer();
}

class _$IoK8sApiCoreV1ConfigMapEnvSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ConfigMapEnvSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ConfigMapEnvSource, _$IoK8sApiCoreV1ConfigMapEnvSource];

  @override
  final String wireName = r'IoK8sApiCoreV1ConfigMapEnvSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ConfigMapEnvSource object, {
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
    IoK8sApiCoreV1ConfigMapEnvSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ConfigMapEnvSourceBuilder result,
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
  IoK8sApiCoreV1ConfigMapEnvSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ConfigMapEnvSourceBuilder();
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

