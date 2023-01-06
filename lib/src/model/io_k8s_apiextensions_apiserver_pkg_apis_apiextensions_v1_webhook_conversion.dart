//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_webhook_client_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_webhook_conversion.g.dart';

/// WebhookConversion describes how to call a conversion webhook
///
/// Properties:
/// * [clientConfig] 
/// * [conversionReviewVersions] - conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail.
@BuiltValue()
abstract class IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion implements Built<IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion, IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversionBuilder> {
  @BuiltValueField(wireName: r'clientConfig')
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig? get clientConfig;

  /// conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail.
  @BuiltValueField(wireName: r'conversionReviewVersions')
  BuiltList<String> get conversionReviewVersions;

  IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion._();

  factory IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion([void updates(IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversionBuilder b)]) = _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion> get serializer => _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversionSerializer();
}

class _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversionSerializer implements PrimitiveSerializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion> {
  @override
  final Iterable<Type> types = const [IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion, _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion];

  @override
  final String wireName = r'IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.clientConfig != null) {
      yield r'clientConfig';
      yield serializers.serialize(
        object.clientConfig,
        specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig),
      );
    }
    yield r'conversionReviewVersions';
    yield serializers.serialize(
      object.conversionReviewVersions,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'clientConfig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig),
          ) as IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig;
          result.clientConfig.replace(valueDes);
          break;
        case r'conversionReviewVersions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.conversionReviewVersions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversionBuilder();
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

