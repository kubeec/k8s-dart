//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_anti_affinity.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_affinity.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_affinity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_affinity.g.dart';

/// Affinity is a group of affinity scheduling rules.
///
/// Properties:
/// * [nodeAffinity] 
/// * [podAffinity] 
/// * [podAntiAffinity] 
@BuiltValue()
abstract class IoK8sApiCoreV1Affinity implements Built<IoK8sApiCoreV1Affinity, IoK8sApiCoreV1AffinityBuilder> {
  @BuiltValueField(wireName: r'nodeAffinity')
  IoK8sApiCoreV1NodeAffinity? get nodeAffinity;

  @BuiltValueField(wireName: r'podAffinity')
  IoK8sApiCoreV1PodAffinity? get podAffinity;

  @BuiltValueField(wireName: r'podAntiAffinity')
  IoK8sApiCoreV1PodAntiAffinity? get podAntiAffinity;

  IoK8sApiCoreV1Affinity._();

  factory IoK8sApiCoreV1Affinity([void updates(IoK8sApiCoreV1AffinityBuilder b)]) = _$IoK8sApiCoreV1Affinity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1AffinityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1Affinity> get serializer => _$IoK8sApiCoreV1AffinitySerializer();
}

class _$IoK8sApiCoreV1AffinitySerializer implements PrimitiveSerializer<IoK8sApiCoreV1Affinity> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1Affinity, _$IoK8sApiCoreV1Affinity];

  @override
  final String wireName = r'IoK8sApiCoreV1Affinity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1Affinity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.nodeAffinity != null) {
      yield r'nodeAffinity';
      yield serializers.serialize(
        object.nodeAffinity,
        specifiedType: const FullType(IoK8sApiCoreV1NodeAffinity),
      );
    }
    if (object.podAffinity != null) {
      yield r'podAffinity';
      yield serializers.serialize(
        object.podAffinity,
        specifiedType: const FullType(IoK8sApiCoreV1PodAffinity),
      );
    }
    if (object.podAntiAffinity != null) {
      yield r'podAntiAffinity';
      yield serializers.serialize(
        object.podAntiAffinity,
        specifiedType: const FullType(IoK8sApiCoreV1PodAntiAffinity),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1Affinity object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1AffinityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nodeAffinity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1NodeAffinity),
          ) as IoK8sApiCoreV1NodeAffinity;
          result.nodeAffinity.replace(valueDes);
          break;
        case r'podAffinity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1PodAffinity),
          ) as IoK8sApiCoreV1PodAffinity;
          result.podAffinity.replace(valueDes);
          break;
        case r'podAntiAffinity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1PodAntiAffinity),
          ) as IoK8sApiCoreV1PodAntiAffinity;
          result.podAntiAffinity.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1Affinity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1AffinityBuilder();
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

