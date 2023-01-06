//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_hpa_scaling_policy.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v2_hpa_scaling_rules.g.dart';

/// HPAScalingRules configures the scaling behavior for one direction. These Rules are applied after calculating DesiredReplicas from metrics for the HPA. They can limit the scaling velocity by specifying scaling policies. They can prevent flapping by specifying the stabilization window, so that the number of replicas is not set instantly, instead, the safest value from the stabilization window is chosen.
///
/// Properties:
/// * [policies] - policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid
/// * [selectPolicy] - selectPolicy is used to specify which policy should be used. If not set, the default value Max is used.
/// * [stabilizationWindowSeconds] - StabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long).
@BuiltValue()
abstract class IoK8sApiAutoscalingV2HPAScalingRules implements Built<IoK8sApiAutoscalingV2HPAScalingRules, IoK8sApiAutoscalingV2HPAScalingRulesBuilder> {
  /// policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid
  @BuiltValueField(wireName: r'policies')
  BuiltList<IoK8sApiAutoscalingV2HPAScalingPolicy>? get policies;

  /// selectPolicy is used to specify which policy should be used. If not set, the default value Max is used.
  @BuiltValueField(wireName: r'selectPolicy')
  String? get selectPolicy;

  /// StabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long).
  @BuiltValueField(wireName: r'stabilizationWindowSeconds')
  int? get stabilizationWindowSeconds;

  IoK8sApiAutoscalingV2HPAScalingRules._();

  factory IoK8sApiAutoscalingV2HPAScalingRules([void updates(IoK8sApiAutoscalingV2HPAScalingRulesBuilder b)]) = _$IoK8sApiAutoscalingV2HPAScalingRules;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV2HPAScalingRulesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV2HPAScalingRules> get serializer => _$IoK8sApiAutoscalingV2HPAScalingRulesSerializer();
}

class _$IoK8sApiAutoscalingV2HPAScalingRulesSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV2HPAScalingRules> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV2HPAScalingRules, _$IoK8sApiAutoscalingV2HPAScalingRules];

  @override
  final String wireName = r'IoK8sApiAutoscalingV2HPAScalingRules';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV2HPAScalingRules object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.policies != null) {
      yield r'policies';
      yield serializers.serialize(
        object.policies,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAutoscalingV2HPAScalingPolicy)]),
      );
    }
    if (object.selectPolicy != null) {
      yield r'selectPolicy';
      yield serializers.serialize(
        object.selectPolicy,
        specifiedType: const FullType(String),
      );
    }
    if (object.stabilizationWindowSeconds != null) {
      yield r'stabilizationWindowSeconds';
      yield serializers.serialize(
        object.stabilizationWindowSeconds,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAutoscalingV2HPAScalingRules object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV2HPAScalingRulesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'policies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAutoscalingV2HPAScalingPolicy)]),
          ) as BuiltList<IoK8sApiAutoscalingV2HPAScalingPolicy>;
          result.policies.replace(valueDes);
          break;
        case r'selectPolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.selectPolicy = valueDes;
          break;
        case r'stabilizationWindowSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.stabilizationWindowSeconds = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAutoscalingV2HPAScalingRules deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV2HPAScalingRulesBuilder();
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

