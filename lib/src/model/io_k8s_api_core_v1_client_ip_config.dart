//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_client_ip_config.g.dart';

/// ClientIPConfig represents the configurations of Client IP based session affinity.
///
/// Properties:
/// * [timeoutSeconds] - timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == \"ClientIP\". Default value is 10800(for 3 hours).
@BuiltValue()
abstract class IoK8sApiCoreV1ClientIPConfig implements Built<IoK8sApiCoreV1ClientIPConfig, IoK8sApiCoreV1ClientIPConfigBuilder> {
  /// timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == \"ClientIP\". Default value is 10800(for 3 hours).
  @BuiltValueField(wireName: r'timeoutSeconds')
  int? get timeoutSeconds;

  IoK8sApiCoreV1ClientIPConfig._();

  factory IoK8sApiCoreV1ClientIPConfig([void updates(IoK8sApiCoreV1ClientIPConfigBuilder b)]) = _$IoK8sApiCoreV1ClientIPConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ClientIPConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ClientIPConfig> get serializer => _$IoK8sApiCoreV1ClientIPConfigSerializer();
}

class _$IoK8sApiCoreV1ClientIPConfigSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ClientIPConfig> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ClientIPConfig, _$IoK8sApiCoreV1ClientIPConfig];

  @override
  final String wireName = r'IoK8sApiCoreV1ClientIPConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ClientIPConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.timeoutSeconds != null) {
      yield r'timeoutSeconds';
      yield serializers.serialize(
        object.timeoutSeconds,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ClientIPConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ClientIPConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'timeoutSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timeoutSeconds = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ClientIPConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ClientIPConfigBuilder();
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

