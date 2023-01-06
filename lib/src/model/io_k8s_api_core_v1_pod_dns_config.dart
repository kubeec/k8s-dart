//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_dns_config_option.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_pod_dns_config.g.dart';

/// PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy.
///
/// Properties:
/// * [nameservers] - A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.
/// * [options] - A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.
/// * [searches] - A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.
@BuiltValue()
abstract class IoK8sApiCoreV1PodDNSConfig implements Built<IoK8sApiCoreV1PodDNSConfig, IoK8sApiCoreV1PodDNSConfigBuilder> {
  /// A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.
  @BuiltValueField(wireName: r'nameservers')
  BuiltList<String>? get nameservers;

  /// A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.
  @BuiltValueField(wireName: r'options')
  BuiltList<IoK8sApiCoreV1PodDNSConfigOption>? get options;

  /// A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.
  @BuiltValueField(wireName: r'searches')
  BuiltList<String>? get searches;

  IoK8sApiCoreV1PodDNSConfig._();

  factory IoK8sApiCoreV1PodDNSConfig([void updates(IoK8sApiCoreV1PodDNSConfigBuilder b)]) = _$IoK8sApiCoreV1PodDNSConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PodDNSConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PodDNSConfig> get serializer => _$IoK8sApiCoreV1PodDNSConfigSerializer();
}

class _$IoK8sApiCoreV1PodDNSConfigSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PodDNSConfig> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PodDNSConfig, _$IoK8sApiCoreV1PodDNSConfig];

  @override
  final String wireName = r'IoK8sApiCoreV1PodDNSConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PodDNSConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.nameservers != null) {
      yield r'nameservers';
      yield serializers.serialize(
        object.nameservers,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PodDNSConfigOption)]),
      );
    }
    if (object.searches != null) {
      yield r'searches';
      yield serializers.serialize(
        object.searches,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1PodDNSConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PodDNSConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nameservers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.nameservers.replace(valueDes);
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PodDNSConfigOption)]),
          ) as BuiltList<IoK8sApiCoreV1PodDNSConfigOption>;
          result.options.replace(valueDes);
          break;
        case r'searches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.searches.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1PodDNSConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PodDNSConfigBuilder();
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

