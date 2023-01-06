//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_http_ingress_path.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1_http_ingress_rule_value.g.dart';

/// HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example: http://<host>/<path>?<searchpart> -> backend where where parts of the url correspond to RFC 3986, this resource will be used to match against everything after the last '/' and before the first '?' or '#'.
///
/// Properties:
/// * [paths] - A collection of paths that map requests to backends.
@BuiltValue()
abstract class IoK8sApiNetworkingV1HTTPIngressRuleValue implements Built<IoK8sApiNetworkingV1HTTPIngressRuleValue, IoK8sApiNetworkingV1HTTPIngressRuleValueBuilder> {
  /// A collection of paths that map requests to backends.
  @BuiltValueField(wireName: r'paths')
  BuiltList<IoK8sApiNetworkingV1HTTPIngressPath> get paths;

  IoK8sApiNetworkingV1HTTPIngressRuleValue._();

  factory IoK8sApiNetworkingV1HTTPIngressRuleValue([void updates(IoK8sApiNetworkingV1HTTPIngressRuleValueBuilder b)]) = _$IoK8sApiNetworkingV1HTTPIngressRuleValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1HTTPIngressRuleValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1HTTPIngressRuleValue> get serializer => _$IoK8sApiNetworkingV1HTTPIngressRuleValueSerializer();
}

class _$IoK8sApiNetworkingV1HTTPIngressRuleValueSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1HTTPIngressRuleValue> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1HTTPIngressRuleValue, _$IoK8sApiNetworkingV1HTTPIngressRuleValue];

  @override
  final String wireName = r'IoK8sApiNetworkingV1HTTPIngressRuleValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1HTTPIngressRuleValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'paths';
    yield serializers.serialize(
      object.paths,
      specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1HTTPIngressPath)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNetworkingV1HTTPIngressRuleValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1HTTPIngressRuleValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'paths':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1HTTPIngressPath)]),
          ) as BuiltList<IoK8sApiNetworkingV1HTTPIngressPath>;
          result.paths.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNetworkingV1HTTPIngressRuleValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1HTTPIngressRuleValueBuilder();
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

