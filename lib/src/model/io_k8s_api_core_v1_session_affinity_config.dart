//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_client_ip_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_session_affinity_config.g.dart';

/// SessionAffinityConfig represents the configurations of session affinity.
///
/// Properties:
/// * [clientIP] 
@BuiltValue()
abstract class IoK8sApiCoreV1SessionAffinityConfig implements Built<IoK8sApiCoreV1SessionAffinityConfig, IoK8sApiCoreV1SessionAffinityConfigBuilder> {
  @BuiltValueField(wireName: r'clientIP')
  IoK8sApiCoreV1ClientIPConfig? get clientIP;

  IoK8sApiCoreV1SessionAffinityConfig._();

  factory IoK8sApiCoreV1SessionAffinityConfig([void updates(IoK8sApiCoreV1SessionAffinityConfigBuilder b)]) = _$IoK8sApiCoreV1SessionAffinityConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1SessionAffinityConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1SessionAffinityConfig> get serializer => _$IoK8sApiCoreV1SessionAffinityConfigSerializer();
}

class _$IoK8sApiCoreV1SessionAffinityConfigSerializer implements PrimitiveSerializer<IoK8sApiCoreV1SessionAffinityConfig> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1SessionAffinityConfig, _$IoK8sApiCoreV1SessionAffinityConfig];

  @override
  final String wireName = r'IoK8sApiCoreV1SessionAffinityConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1SessionAffinityConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.clientIP != null) {
      yield r'clientIP';
      yield serializers.serialize(
        object.clientIP,
        specifiedType: const FullType(IoK8sApiCoreV1ClientIPConfig),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1SessionAffinityConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1SessionAffinityConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'clientIP':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ClientIPConfig),
          ) as IoK8sApiCoreV1ClientIPConfig;
          result.clientIP.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1SessionAffinityConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1SessionAffinityConfigBuilder();
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

