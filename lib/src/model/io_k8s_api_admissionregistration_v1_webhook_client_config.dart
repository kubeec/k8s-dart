//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1_service_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_admissionregistration_v1_webhook_client_config.g.dart';

/// WebhookClientConfig contains the information to make a TLS connection with the webhook
///
/// Properties:
/// * [caBundle] - `caBundle` is a PEM encoded CA bundle which will be used to validate the webhook's server certificate. If unspecified, system trust roots on the apiserver are used.
/// * [service] 
/// * [url] - `url` gives the location of the webhook, in standard URL form (`scheme://host:port/path`). Exactly one of `url` or `service` must be specified.  The `host` should not refer to a service running in the cluster; use the `service` field instead. The host might be resolved via external DNS in some apiservers (e.g., `kube-apiserver` cannot resolve in-cluster DNS as that would be a layering violation). `host` may also be an IP address.  Please note that using `localhost` or `127.0.0.1` as a `host` is risky unless you take great care to run this webhook on all hosts which run an apiserver which might need to make calls to this webhook. Such installs are likely to be non-portable, i.e., not easy to turn up in a new cluster.  The scheme must be \"https\"; the URL must begin with \"https://\".  A path is optional, and if present may be any string permissible in a URL. You may use the path to pass an arbitrary string to the webhook, for example, a cluster identifier.  Attempting to use a user or basic auth e.g. \"user:password@\" is not allowed. Fragments (\"#...\") and query parameters (\"?...\") are not allowed, either.
@BuiltValue()
abstract class IoK8sApiAdmissionregistrationV1WebhookClientConfig implements Built<IoK8sApiAdmissionregistrationV1WebhookClientConfig, IoK8sApiAdmissionregistrationV1WebhookClientConfigBuilder> {
  /// `caBundle` is a PEM encoded CA bundle which will be used to validate the webhook's server certificate. If unspecified, system trust roots on the apiserver are used.
  @BuiltValueField(wireName: r'caBundle')
  String? get caBundle;

  @BuiltValueField(wireName: r'service')
  IoK8sApiAdmissionregistrationV1ServiceReference? get service;

  /// `url` gives the location of the webhook, in standard URL form (`scheme://host:port/path`). Exactly one of `url` or `service` must be specified.  The `host` should not refer to a service running in the cluster; use the `service` field instead. The host might be resolved via external DNS in some apiservers (e.g., `kube-apiserver` cannot resolve in-cluster DNS as that would be a layering violation). `host` may also be an IP address.  Please note that using `localhost` or `127.0.0.1` as a `host` is risky unless you take great care to run this webhook on all hosts which run an apiserver which might need to make calls to this webhook. Such installs are likely to be non-portable, i.e., not easy to turn up in a new cluster.  The scheme must be \"https\"; the URL must begin with \"https://\".  A path is optional, and if present may be any string permissible in a URL. You may use the path to pass an arbitrary string to the webhook, for example, a cluster identifier.  Attempting to use a user or basic auth e.g. \"user:password@\" is not allowed. Fragments (\"#...\") and query parameters (\"?...\") are not allowed, either.
  @BuiltValueField(wireName: r'url')
  String? get url;

  IoK8sApiAdmissionregistrationV1WebhookClientConfig._();

  factory IoK8sApiAdmissionregistrationV1WebhookClientConfig([void updates(IoK8sApiAdmissionregistrationV1WebhookClientConfigBuilder b)]) = _$IoK8sApiAdmissionregistrationV1WebhookClientConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAdmissionregistrationV1WebhookClientConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAdmissionregistrationV1WebhookClientConfig> get serializer => _$IoK8sApiAdmissionregistrationV1WebhookClientConfigSerializer();
}

class _$IoK8sApiAdmissionregistrationV1WebhookClientConfigSerializer implements PrimitiveSerializer<IoK8sApiAdmissionregistrationV1WebhookClientConfig> {
  @override
  final Iterable<Type> types = const [IoK8sApiAdmissionregistrationV1WebhookClientConfig, _$IoK8sApiAdmissionregistrationV1WebhookClientConfig];

  @override
  final String wireName = r'IoK8sApiAdmissionregistrationV1WebhookClientConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAdmissionregistrationV1WebhookClientConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.caBundle != null) {
      yield r'caBundle';
      yield serializers.serialize(
        object.caBundle,
        specifiedType: const FullType(String),
      );
    }
    if (object.service != null) {
      yield r'service';
      yield serializers.serialize(
        object.service,
        specifiedType: const FullType(IoK8sApiAdmissionregistrationV1ServiceReference),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAdmissionregistrationV1WebhookClientConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAdmissionregistrationV1WebhookClientConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'caBundle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.caBundle = valueDes;
          break;
        case r'service':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAdmissionregistrationV1ServiceReference),
          ) as IoK8sApiAdmissionregistrationV1ServiceReference;
          result.service.replace(valueDes);
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAdmissionregistrationV1WebhookClientConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAdmissionregistrationV1WebhookClientConfigBuilder();
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

