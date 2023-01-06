//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_config_map_node_config_source.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_node_config_source.g.dart';

/// NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil. This API is deprecated since 1.22
///
/// Properties:
/// * [configMap] 
@BuiltValue()
abstract class IoK8sApiCoreV1NodeConfigSource implements Built<IoK8sApiCoreV1NodeConfigSource, IoK8sApiCoreV1NodeConfigSourceBuilder> {
  @BuiltValueField(wireName: r'configMap')
  IoK8sApiCoreV1ConfigMapNodeConfigSource? get configMap;

  IoK8sApiCoreV1NodeConfigSource._();

  factory IoK8sApiCoreV1NodeConfigSource([void updates(IoK8sApiCoreV1NodeConfigSourceBuilder b)]) = _$IoK8sApiCoreV1NodeConfigSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1NodeConfigSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1NodeConfigSource> get serializer => _$IoK8sApiCoreV1NodeConfigSourceSerializer();
}

class _$IoK8sApiCoreV1NodeConfigSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1NodeConfigSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1NodeConfigSource, _$IoK8sApiCoreV1NodeConfigSource];

  @override
  final String wireName = r'IoK8sApiCoreV1NodeConfigSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1NodeConfigSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.configMap != null) {
      yield r'configMap';
      yield serializers.serialize(
        object.configMap,
        specifiedType: const FullType(IoK8sApiCoreV1ConfigMapNodeConfigSource),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1NodeConfigSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1NodeConfigSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'configMap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ConfigMapNodeConfigSource),
          ) as IoK8sApiCoreV1ConfigMapNodeConfigSource;
          result.configMap.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1NodeConfigSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1NodeConfigSourceBuilder();
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

