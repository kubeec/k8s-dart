//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v1_scale_status.g.dart';

/// ScaleStatus represents the current status of a scale subresource.
///
/// Properties:
/// * [replicas] - actual number of observed instances of the scaled object.
/// * [selector] - label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: http://kubernetes.io/docs/user-guide/labels#label-selectors
@BuiltValue()
abstract class IoK8sApiAutoscalingV1ScaleStatus implements Built<IoK8sApiAutoscalingV1ScaleStatus, IoK8sApiAutoscalingV1ScaleStatusBuilder> {
  /// actual number of observed instances of the scaled object.
  @BuiltValueField(wireName: r'replicas')
  int get replicas;

  /// label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: http://kubernetes.io/docs/user-guide/labels#label-selectors
  @BuiltValueField(wireName: r'selector')
  String? get selector;

  IoK8sApiAutoscalingV1ScaleStatus._();

  factory IoK8sApiAutoscalingV1ScaleStatus([void updates(IoK8sApiAutoscalingV1ScaleStatusBuilder b)]) = _$IoK8sApiAutoscalingV1ScaleStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV1ScaleStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV1ScaleStatus> get serializer => _$IoK8sApiAutoscalingV1ScaleStatusSerializer();
}

class _$IoK8sApiAutoscalingV1ScaleStatusSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV1ScaleStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV1ScaleStatus, _$IoK8sApiAutoscalingV1ScaleStatus];

  @override
  final String wireName = r'IoK8sApiAutoscalingV1ScaleStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV1ScaleStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'replicas';
    yield serializers.serialize(
      object.replicas,
      specifiedType: const FullType(int),
    );
    if (object.selector != null) {
      yield r'selector';
      yield serializers.serialize(
        object.selector,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAutoscalingV1ScaleStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV1ScaleStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'replicas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.replicas = valueDes;
          break;
        case r'selector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.selector = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAutoscalingV1ScaleStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV1ScaleStatusBuilder();
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

