//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_config_map_node_config_source.g.dart';

/// ConfigMapNodeConfigSource contains the information to reference a ConfigMap as a config source for the Node. This API is deprecated since 1.22: https://git.k8s.io/enhancements/keps/sig-node/281-dynamic-kubelet-configuration
///
/// Properties:
/// * [kubeletConfigKey] - KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.
/// * [name] - Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.
/// * [namespace] - Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.
/// * [resourceVersion] - ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
/// * [uid] - UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
@BuiltValue()
abstract class IoK8sApiCoreV1ConfigMapNodeConfigSource implements Built<IoK8sApiCoreV1ConfigMapNodeConfigSource, IoK8sApiCoreV1ConfigMapNodeConfigSourceBuilder> {
  /// KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.
  @BuiltValueField(wireName: r'kubeletConfigKey')
  String get kubeletConfigKey;

  /// Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.
  @BuiltValueField(wireName: r'namespace')
  String get namespace;

  /// ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
  @BuiltValueField(wireName: r'resourceVersion')
  String? get resourceVersion;

  /// UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
  @BuiltValueField(wireName: r'uid')
  String? get uid;

  IoK8sApiCoreV1ConfigMapNodeConfigSource._();

  factory IoK8sApiCoreV1ConfigMapNodeConfigSource([void updates(IoK8sApiCoreV1ConfigMapNodeConfigSourceBuilder b)]) = _$IoK8sApiCoreV1ConfigMapNodeConfigSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ConfigMapNodeConfigSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ConfigMapNodeConfigSource> get serializer => _$IoK8sApiCoreV1ConfigMapNodeConfigSourceSerializer();
}

class _$IoK8sApiCoreV1ConfigMapNodeConfigSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ConfigMapNodeConfigSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ConfigMapNodeConfigSource, _$IoK8sApiCoreV1ConfigMapNodeConfigSource];

  @override
  final String wireName = r'IoK8sApiCoreV1ConfigMapNodeConfigSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ConfigMapNodeConfigSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kubeletConfigKey';
    yield serializers.serialize(
      object.kubeletConfigKey,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'namespace';
    yield serializers.serialize(
      object.namespace,
      specifiedType: const FullType(String),
    );
    if (object.resourceVersion != null) {
      yield r'resourceVersion';
      yield serializers.serialize(
        object.resourceVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.uid != null) {
      yield r'uid';
      yield serializers.serialize(
        object.uid,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ConfigMapNodeConfigSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ConfigMapNodeConfigSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kubeletConfigKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kubeletConfigKey = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'namespace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.namespace = valueDes;
          break;
        case r'resourceVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resourceVersion = valueDes;
          break;
        case r'uid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ConfigMapNodeConfigSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ConfigMapNodeConfigSourceBuilder();
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

