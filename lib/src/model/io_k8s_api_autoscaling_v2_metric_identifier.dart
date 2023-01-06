//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_label_selector.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v2_metric_identifier.g.dart';

/// MetricIdentifier defines the name and optionally selector for a metric
///
/// Properties:
/// * [name] - name is the name of the given metric
/// * [selector] 
@BuiltValue()
abstract class IoK8sApiAutoscalingV2MetricIdentifier implements Built<IoK8sApiAutoscalingV2MetricIdentifier, IoK8sApiAutoscalingV2MetricIdentifierBuilder> {
  /// name is the name of the given metric
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'selector')
  IoK8sApimachineryPkgApisMetaV1LabelSelector? get selector;

  IoK8sApiAutoscalingV2MetricIdentifier._();

  factory IoK8sApiAutoscalingV2MetricIdentifier([void updates(IoK8sApiAutoscalingV2MetricIdentifierBuilder b)]) = _$IoK8sApiAutoscalingV2MetricIdentifier;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV2MetricIdentifierBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV2MetricIdentifier> get serializer => _$IoK8sApiAutoscalingV2MetricIdentifierSerializer();
}

class _$IoK8sApiAutoscalingV2MetricIdentifierSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV2MetricIdentifier> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV2MetricIdentifier, _$IoK8sApiAutoscalingV2MetricIdentifier];

  @override
  final String wireName = r'IoK8sApiAutoscalingV2MetricIdentifier';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV2MetricIdentifier object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.selector != null) {
      yield r'selector';
      yield serializers.serialize(
        object.selector,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAutoscalingV2MetricIdentifier object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV2MetricIdentifierBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'selector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
          ) as IoK8sApimachineryPkgApisMetaV1LabelSelector;
          result.selector.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAutoscalingV2MetricIdentifier deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV2MetricIdentifierBuilder();
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

