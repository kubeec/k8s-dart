//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v1_scale_spec.g.dart';

/// ScaleSpec describes the attributes of a scale subresource.
///
/// Properties:
/// * [replicas] - desired number of instances for the scaled object.
@BuiltValue()
abstract class IoK8sApiAutoscalingV1ScaleSpec implements Built<IoK8sApiAutoscalingV1ScaleSpec, IoK8sApiAutoscalingV1ScaleSpecBuilder> {
  /// desired number of instances for the scaled object.
  @BuiltValueField(wireName: r'replicas')
  int? get replicas;

  IoK8sApiAutoscalingV1ScaleSpec._();

  factory IoK8sApiAutoscalingV1ScaleSpec([void updates(IoK8sApiAutoscalingV1ScaleSpecBuilder b)]) = _$IoK8sApiAutoscalingV1ScaleSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV1ScaleSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV1ScaleSpec> get serializer => _$IoK8sApiAutoscalingV1ScaleSpecSerializer();
}

class _$IoK8sApiAutoscalingV1ScaleSpecSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV1ScaleSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV1ScaleSpec, _$IoK8sApiAutoscalingV1ScaleSpec];

  @override
  final String wireName = r'IoK8sApiAutoscalingV1ScaleSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV1ScaleSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.replicas != null) {
      yield r'replicas';
      yield serializers.serialize(
        object.replicas,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAutoscalingV1ScaleSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV1ScaleSpecBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAutoscalingV1ScaleSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV1ScaleSpecBuilder();
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

