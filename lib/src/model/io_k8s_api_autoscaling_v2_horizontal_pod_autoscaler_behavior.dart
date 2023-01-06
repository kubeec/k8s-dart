//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_hpa_scaling_rules.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v2_horizontal_pod_autoscaler_behavior.g.dart';

/// HorizontalPodAutoscalerBehavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively).
///
/// Properties:
/// * [scaleDown] 
/// * [scaleUp] 
@BuiltValue()
abstract class IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior implements Built<IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior, IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehaviorBuilder> {
  @BuiltValueField(wireName: r'scaleDown')
  IoK8sApiAutoscalingV2HPAScalingRules? get scaleDown;

  @BuiltValueField(wireName: r'scaleUp')
  IoK8sApiAutoscalingV2HPAScalingRules? get scaleUp;

  IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior._();

  factory IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior([void updates(IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehaviorBuilder b)]) = _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehaviorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior> get serializer => _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehaviorSerializer();
}

class _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehaviorSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior, _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior];

  @override
  final String wireName = r'IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.scaleDown != null) {
      yield r'scaleDown';
      yield serializers.serialize(
        object.scaleDown,
        specifiedType: const FullType(IoK8sApiAutoscalingV2HPAScalingRules),
      );
    }
    if (object.scaleUp != null) {
      yield r'scaleUp';
      yield serializers.serialize(
        object.scaleUp,
        specifiedType: const FullType(IoK8sApiAutoscalingV2HPAScalingRules),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehaviorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'scaleDown':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAutoscalingV2HPAScalingRules),
          ) as IoK8sApiAutoscalingV2HPAScalingRules;
          result.scaleDown.replace(valueDes);
          break;
        case r'scaleUp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAutoscalingV2HPAScalingRules),
          ) as IoK8sApiAutoscalingV2HPAScalingRules;
          result.scaleUp.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehaviorBuilder();
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

