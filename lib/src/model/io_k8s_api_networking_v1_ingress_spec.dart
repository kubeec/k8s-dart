//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_backend.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_rule.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_tls.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1_ingress_spec.g.dart';

/// IngressSpec describes the Ingress the user wishes to exist.
///
/// Properties:
/// * [defaultBackend] 
/// * [ingressClassName] - IngressClassName is the name of an IngressClass cluster resource. Ingress controller implementations use this field to know whether they should be serving this Ingress resource, by a transitive connection (controller -> IngressClass -> Ingress resource). Although the `kubernetes.io/ingress.class` annotation (simple constant name) was never formally defined, it was widely supported by Ingress controllers to create a direct binding between Ingress controller and Ingress resources. Newly created Ingress resources should prefer using the field. However, even though the annotation is officially deprecated, for backwards compatibility reasons, ingress controllers should still honor that annotation if present.
/// * [rules] - A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
/// * [tls] - TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
@BuiltValue()
abstract class IoK8sApiNetworkingV1IngressSpec implements Built<IoK8sApiNetworkingV1IngressSpec, IoK8sApiNetworkingV1IngressSpecBuilder> {
  @BuiltValueField(wireName: r'defaultBackend')
  IoK8sApiNetworkingV1IngressBackend? get defaultBackend;

  /// IngressClassName is the name of an IngressClass cluster resource. Ingress controller implementations use this field to know whether they should be serving this Ingress resource, by a transitive connection (controller -> IngressClass -> Ingress resource). Although the `kubernetes.io/ingress.class` annotation (simple constant name) was never formally defined, it was widely supported by Ingress controllers to create a direct binding between Ingress controller and Ingress resources. Newly created Ingress resources should prefer using the field. However, even though the annotation is officially deprecated, for backwards compatibility reasons, ingress controllers should still honor that annotation if present.
  @BuiltValueField(wireName: r'ingressClassName')
  String? get ingressClassName;

  /// A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
  @BuiltValueField(wireName: r'rules')
  BuiltList<IoK8sApiNetworkingV1IngressRule>? get rules;

  /// TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
  @BuiltValueField(wireName: r'tls')
  BuiltList<IoK8sApiNetworkingV1IngressTLS>? get tls;

  IoK8sApiNetworkingV1IngressSpec._();

  factory IoK8sApiNetworkingV1IngressSpec([void updates(IoK8sApiNetworkingV1IngressSpecBuilder b)]) = _$IoK8sApiNetworkingV1IngressSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1IngressSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1IngressSpec> get serializer => _$IoK8sApiNetworkingV1IngressSpecSerializer();
}

class _$IoK8sApiNetworkingV1IngressSpecSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1IngressSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1IngressSpec, _$IoK8sApiNetworkingV1IngressSpec];

  @override
  final String wireName = r'IoK8sApiNetworkingV1IngressSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1IngressSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.defaultBackend != null) {
      yield r'defaultBackend';
      yield serializers.serialize(
        object.defaultBackend,
        specifiedType: const FullType(IoK8sApiNetworkingV1IngressBackend),
      );
    }
    if (object.ingressClassName != null) {
      yield r'ingressClassName';
      yield serializers.serialize(
        object.ingressClassName,
        specifiedType: const FullType(String),
      );
    }
    if (object.rules != null) {
      yield r'rules';
      yield serializers.serialize(
        object.rules,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1IngressRule)]),
      );
    }
    if (object.tls != null) {
      yield r'tls';
      yield serializers.serialize(
        object.tls,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1IngressTLS)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNetworkingV1IngressSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1IngressSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'defaultBackend':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiNetworkingV1IngressBackend),
          ) as IoK8sApiNetworkingV1IngressBackend;
          result.defaultBackend.replace(valueDes);
          break;
        case r'ingressClassName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ingressClassName = valueDes;
          break;
        case r'rules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1IngressRule)]),
          ) as BuiltList<IoK8sApiNetworkingV1IngressRule>;
          result.rules.replace(valueDes);
          break;
        case r'tls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1IngressTLS)]),
          ) as BuiltList<IoK8sApiNetworkingV1IngressTLS>;
          result.tls.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNetworkingV1IngressSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1IngressSpecBuilder();
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

