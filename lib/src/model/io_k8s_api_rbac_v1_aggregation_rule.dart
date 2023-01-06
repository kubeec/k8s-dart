//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_label_selector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_rbac_v1_aggregation_rule.g.dart';

/// AggregationRule describes how to locate ClusterRoles to aggregate into the ClusterRole
///
/// Properties:
/// * [clusterRoleSelectors] - ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
@BuiltValue()
abstract class IoK8sApiRbacV1AggregationRule implements Built<IoK8sApiRbacV1AggregationRule, IoK8sApiRbacV1AggregationRuleBuilder> {
  /// ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
  @BuiltValueField(wireName: r'clusterRoleSelectors')
  BuiltList<IoK8sApimachineryPkgApisMetaV1LabelSelector>? get clusterRoleSelectors;

  IoK8sApiRbacV1AggregationRule._();

  factory IoK8sApiRbacV1AggregationRule([void updates(IoK8sApiRbacV1AggregationRuleBuilder b)]) = _$IoK8sApiRbacV1AggregationRule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiRbacV1AggregationRuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiRbacV1AggregationRule> get serializer => _$IoK8sApiRbacV1AggregationRuleSerializer();
}

class _$IoK8sApiRbacV1AggregationRuleSerializer implements PrimitiveSerializer<IoK8sApiRbacV1AggregationRule> {
  @override
  final Iterable<Type> types = const [IoK8sApiRbacV1AggregationRule, _$IoK8sApiRbacV1AggregationRule];

  @override
  final String wireName = r'IoK8sApiRbacV1AggregationRule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiRbacV1AggregationRule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.clusterRoleSelectors != null) {
      yield r'clusterRoleSelectors';
      yield serializers.serialize(
        object.clusterRoleSelectors,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiRbacV1AggregationRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiRbacV1AggregationRuleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'clusterRoleSelectors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector)]),
          ) as BuiltList<IoK8sApimachineryPkgApisMetaV1LabelSelector>;
          result.clusterRoleSelectors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiRbacV1AggregationRule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiRbacV1AggregationRuleBuilder();
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

