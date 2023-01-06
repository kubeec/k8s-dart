//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_env_var_source.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_env_var.g.dart';

/// EnvVar represents an environment variable present in a Container.
///
/// Properties:
/// * [name] - Name of the environment variable. Must be a C_IDENTIFIER.
/// * [value] - Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\".
/// * [valueFrom] 
@BuiltValue()
abstract class IoK8sApiCoreV1EnvVar implements Built<IoK8sApiCoreV1EnvVar, IoK8sApiCoreV1EnvVarBuilder> {
  /// Name of the environment variable. Must be a C_IDENTIFIER.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\".
  @BuiltValueField(wireName: r'value')
  String? get value;

  @BuiltValueField(wireName: r'valueFrom')
  IoK8sApiCoreV1EnvVarSource? get valueFrom;

  IoK8sApiCoreV1EnvVar._();

  factory IoK8sApiCoreV1EnvVar([void updates(IoK8sApiCoreV1EnvVarBuilder b)]) = _$IoK8sApiCoreV1EnvVar;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1EnvVarBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1EnvVar> get serializer => _$IoK8sApiCoreV1EnvVarSerializer();
}

class _$IoK8sApiCoreV1EnvVarSerializer implements PrimitiveSerializer<IoK8sApiCoreV1EnvVar> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1EnvVar, _$IoK8sApiCoreV1EnvVar];

  @override
  final String wireName = r'IoK8sApiCoreV1EnvVar';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1EnvVar object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
    if (object.valueFrom != null) {
      yield r'valueFrom';
      yield serializers.serialize(
        object.valueFrom,
        specifiedType: const FullType(IoK8sApiCoreV1EnvVarSource),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1EnvVar object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1EnvVarBuilder result,
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
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'valueFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1EnvVarSource),
          ) as IoK8sApiCoreV1EnvVarSource;
          result.valueFrom.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1EnvVar deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1EnvVarBuilder();
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

