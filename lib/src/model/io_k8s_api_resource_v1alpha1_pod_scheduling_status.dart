//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_resource_claim_scheduling_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_resource_v1alpha1_pod_scheduling_status.g.dart';

/// PodSchedulingStatus describes where resources for the Pod can be allocated.
///
/// Properties:
/// * [resourceClaims] - ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses \"WaitForFirstConsumer\" allocation mode.
@BuiltValue()
abstract class IoK8sApiResourceV1alpha1PodSchedulingStatus implements Built<IoK8sApiResourceV1alpha1PodSchedulingStatus, IoK8sApiResourceV1alpha1PodSchedulingStatusBuilder> {
  /// ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses \"WaitForFirstConsumer\" allocation mode.
  @BuiltValueField(wireName: r'resourceClaims')
  BuiltList<IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus>? get resourceClaims;

  IoK8sApiResourceV1alpha1PodSchedulingStatus._();

  factory IoK8sApiResourceV1alpha1PodSchedulingStatus([void updates(IoK8sApiResourceV1alpha1PodSchedulingStatusBuilder b)]) = _$IoK8sApiResourceV1alpha1PodSchedulingStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiResourceV1alpha1PodSchedulingStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiResourceV1alpha1PodSchedulingStatus> get serializer => _$IoK8sApiResourceV1alpha1PodSchedulingStatusSerializer();
}

class _$IoK8sApiResourceV1alpha1PodSchedulingStatusSerializer implements PrimitiveSerializer<IoK8sApiResourceV1alpha1PodSchedulingStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiResourceV1alpha1PodSchedulingStatus, _$IoK8sApiResourceV1alpha1PodSchedulingStatus];

  @override
  final String wireName = r'IoK8sApiResourceV1alpha1PodSchedulingStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiResourceV1alpha1PodSchedulingStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.resourceClaims != null) {
      yield r'resourceClaims';
      yield serializers.serialize(
        object.resourceClaims,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiResourceV1alpha1PodSchedulingStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiResourceV1alpha1PodSchedulingStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'resourceClaims':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus)]),
          ) as BuiltList<IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus>;
          result.resourceClaims.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiResourceV1alpha1PodSchedulingStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiResourceV1alpha1PodSchedulingStatusBuilder();
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

