//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_webhook_conversion.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_conversion.g.dart';

/// CustomResourceConversion describes how to convert different versions of a CR.
///
/// Properties:
/// * [strategy] - strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information   is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhook to be set.
/// * [webhook] 
@BuiltValue()
abstract class IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion implements Built<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion, IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversionBuilder> {
  /// strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information   is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhook to be set.
  @BuiltValueField(wireName: r'strategy')
  String get strategy;

  @BuiltValueField(wireName: r'webhook')
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion? get webhook;

  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion._();

  factory IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion([void updates(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversionBuilder b)]) = _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion> get serializer => _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversionSerializer();
}

class _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversionSerializer implements PrimitiveSerializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion> {
  @override
  final Iterable<Type> types = const [IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion, _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion];

  @override
  final String wireName = r'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'strategy';
    yield serializers.serialize(
      object.strategy,
      specifiedType: const FullType(String),
    );
    if (object.webhook != null) {
      yield r'webhook';
      yield serializers.serialize(
        object.webhook,
        specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'strategy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.strategy = valueDes;
          break;
        case r'webhook':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion),
          ) as IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion;
          result.webhook.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversionBuilder();
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

