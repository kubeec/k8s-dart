//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_class_parameters_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1_ingress_class_spec.g.dart';

/// IngressClassSpec provides information about the class of an Ingress.
///
/// Properties:
/// * [controller] - Controller refers to the name of the controller that should handle this class. This allows for different \"flavors\" that are controlled by the same controller. For example, you may have different Parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. \"acme.io/ingress-controller\". This field is immutable.
/// * [parameters] 
@BuiltValue()
abstract class IoK8sApiNetworkingV1IngressClassSpec implements Built<IoK8sApiNetworkingV1IngressClassSpec, IoK8sApiNetworkingV1IngressClassSpecBuilder> {
  /// Controller refers to the name of the controller that should handle this class. This allows for different \"flavors\" that are controlled by the same controller. For example, you may have different Parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. \"acme.io/ingress-controller\". This field is immutable.
  @BuiltValueField(wireName: r'controller')
  String? get controller;

  @BuiltValueField(wireName: r'parameters')
  IoK8sApiNetworkingV1IngressClassParametersReference? get parameters;

  IoK8sApiNetworkingV1IngressClassSpec._();

  factory IoK8sApiNetworkingV1IngressClassSpec([void updates(IoK8sApiNetworkingV1IngressClassSpecBuilder b)]) = _$IoK8sApiNetworkingV1IngressClassSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1IngressClassSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1IngressClassSpec> get serializer => _$IoK8sApiNetworkingV1IngressClassSpecSerializer();
}

class _$IoK8sApiNetworkingV1IngressClassSpecSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1IngressClassSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1IngressClassSpec, _$IoK8sApiNetworkingV1IngressClassSpec];

  @override
  final String wireName = r'IoK8sApiNetworkingV1IngressClassSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1IngressClassSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.controller != null) {
      yield r'controller';
      yield serializers.serialize(
        object.controller,
        specifiedType: const FullType(String),
      );
    }
    if (object.parameters != null) {
      yield r'parameters';
      yield serializers.serialize(
        object.parameters,
        specifiedType: const FullType(IoK8sApiNetworkingV1IngressClassParametersReference),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNetworkingV1IngressClassSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1IngressClassSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'controller':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.controller = valueDes;
          break;
        case r'parameters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiNetworkingV1IngressClassParametersReference),
          ) as IoK8sApiNetworkingV1IngressClassParametersReference;
          result.parameters.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNetworkingV1IngressClassSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1IngressClassSpecBuilder();
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

