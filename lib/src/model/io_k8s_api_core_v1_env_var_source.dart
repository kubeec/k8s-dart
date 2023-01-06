//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_resource_field_selector.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_secret_key_selector.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_config_map_key_selector.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_object_field_selector.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_env_var_source.g.dart';

/// EnvVarSource represents a source for the value of an EnvVar.
///
/// Properties:
/// * [configMapKeyRef] 
/// * [fieldRef] 
/// * [resourceFieldRef] 
/// * [secretKeyRef] 
@BuiltValue()
abstract class IoK8sApiCoreV1EnvVarSource implements Built<IoK8sApiCoreV1EnvVarSource, IoK8sApiCoreV1EnvVarSourceBuilder> {
  @BuiltValueField(wireName: r'configMapKeyRef')
  IoK8sApiCoreV1ConfigMapKeySelector? get configMapKeyRef;

  @BuiltValueField(wireName: r'fieldRef')
  IoK8sApiCoreV1ObjectFieldSelector? get fieldRef;

  @BuiltValueField(wireName: r'resourceFieldRef')
  IoK8sApiCoreV1ResourceFieldSelector? get resourceFieldRef;

  @BuiltValueField(wireName: r'secretKeyRef')
  IoK8sApiCoreV1SecretKeySelector? get secretKeyRef;

  IoK8sApiCoreV1EnvVarSource._();

  factory IoK8sApiCoreV1EnvVarSource([void updates(IoK8sApiCoreV1EnvVarSourceBuilder b)]) = _$IoK8sApiCoreV1EnvVarSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1EnvVarSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1EnvVarSource> get serializer => _$IoK8sApiCoreV1EnvVarSourceSerializer();
}

class _$IoK8sApiCoreV1EnvVarSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1EnvVarSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1EnvVarSource, _$IoK8sApiCoreV1EnvVarSource];

  @override
  final String wireName = r'IoK8sApiCoreV1EnvVarSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1EnvVarSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.configMapKeyRef != null) {
      yield r'configMapKeyRef';
      yield serializers.serialize(
        object.configMapKeyRef,
        specifiedType: const FullType(IoK8sApiCoreV1ConfigMapKeySelector),
      );
    }
    if (object.fieldRef != null) {
      yield r'fieldRef';
      yield serializers.serialize(
        object.fieldRef,
        specifiedType: const FullType(IoK8sApiCoreV1ObjectFieldSelector),
      );
    }
    if (object.resourceFieldRef != null) {
      yield r'resourceFieldRef';
      yield serializers.serialize(
        object.resourceFieldRef,
        specifiedType: const FullType(IoK8sApiCoreV1ResourceFieldSelector),
      );
    }
    if (object.secretKeyRef != null) {
      yield r'secretKeyRef';
      yield serializers.serialize(
        object.secretKeyRef,
        specifiedType: const FullType(IoK8sApiCoreV1SecretKeySelector),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1EnvVarSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1EnvVarSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'configMapKeyRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ConfigMapKeySelector),
          ) as IoK8sApiCoreV1ConfigMapKeySelector;
          result.configMapKeyRef.replace(valueDes);
          break;
        case r'fieldRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ObjectFieldSelector),
          ) as IoK8sApiCoreV1ObjectFieldSelector;
          result.fieldRef.replace(valueDes);
          break;
        case r'resourceFieldRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ResourceFieldSelector),
          ) as IoK8sApiCoreV1ResourceFieldSelector;
          result.resourceFieldRef.replace(valueDes);
          break;
        case r'secretKeyRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1SecretKeySelector),
          ) as IoK8sApiCoreV1SecretKeySelector;
          result.secretKeyRef.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1EnvVarSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1EnvVarSourceBuilder();
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

