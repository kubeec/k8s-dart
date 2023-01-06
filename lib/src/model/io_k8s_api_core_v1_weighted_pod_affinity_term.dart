//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_affinity_term.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_weighted_pod_affinity_term.g.dart';

/// The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)
///
/// Properties:
/// * [podAffinityTerm] 
/// * [weight] - weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
@BuiltValue()
abstract class IoK8sApiCoreV1WeightedPodAffinityTerm implements Built<IoK8sApiCoreV1WeightedPodAffinityTerm, IoK8sApiCoreV1WeightedPodAffinityTermBuilder> {
  @BuiltValueField(wireName: r'podAffinityTerm')
  IoK8sApiCoreV1PodAffinityTerm get podAffinityTerm;

  /// weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
  @BuiltValueField(wireName: r'weight')
  int get weight;

  IoK8sApiCoreV1WeightedPodAffinityTerm._();

  factory IoK8sApiCoreV1WeightedPodAffinityTerm([void updates(IoK8sApiCoreV1WeightedPodAffinityTermBuilder b)]) = _$IoK8sApiCoreV1WeightedPodAffinityTerm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1WeightedPodAffinityTermBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1WeightedPodAffinityTerm> get serializer => _$IoK8sApiCoreV1WeightedPodAffinityTermSerializer();
}

class _$IoK8sApiCoreV1WeightedPodAffinityTermSerializer implements PrimitiveSerializer<IoK8sApiCoreV1WeightedPodAffinityTerm> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1WeightedPodAffinityTerm, _$IoK8sApiCoreV1WeightedPodAffinityTerm];

  @override
  final String wireName = r'IoK8sApiCoreV1WeightedPodAffinityTerm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1WeightedPodAffinityTerm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'podAffinityTerm';
    yield serializers.serialize(
      object.podAffinityTerm,
      specifiedType: const FullType(IoK8sApiCoreV1PodAffinityTerm),
    );
    yield r'weight';
    yield serializers.serialize(
      object.weight,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1WeightedPodAffinityTerm object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1WeightedPodAffinityTermBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'podAffinityTerm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1PodAffinityTerm),
          ) as IoK8sApiCoreV1PodAffinityTerm;
          result.podAffinityTerm.replace(valueDes);
          break;
        case r'weight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.weight = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1WeightedPodAffinityTerm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1WeightedPodAffinityTermBuilder();
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

