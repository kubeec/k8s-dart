//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_resource_v1alpha1_resource_claim_scheduling_status.g.dart';

/// ResourceClaimSchedulingStatus contains information about one particular ResourceClaim with \"WaitForFirstConsumer\" allocation mode.
///
/// Properties:
/// * [name] - Name matches the pod.spec.resourceClaims[*].Name field.
/// * [unsuitableNodes] - UnsuitableNodes lists nodes that the ResourceClaim cannot be allocated for.  The size of this field is limited to 128, the same as for PodSchedulingSpec.PotentialNodes. This may get increased in the future, but not reduced.
@BuiltValue()
abstract class IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus implements Built<IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus, IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatusBuilder> {
  /// Name matches the pod.spec.resourceClaims[*].Name field.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// UnsuitableNodes lists nodes that the ResourceClaim cannot be allocated for.  The size of this field is limited to 128, the same as for PodSchedulingSpec.PotentialNodes. This may get increased in the future, but not reduced.
  @BuiltValueField(wireName: r'unsuitableNodes')
  BuiltList<String>? get unsuitableNodes;

  IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus._();

  factory IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus([void updates(IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatusBuilder b)]) = _$IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus> get serializer => _$IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatusSerializer();
}

class _$IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatusSerializer implements PrimitiveSerializer<IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus, _$IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus];

  @override
  final String wireName = r'IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.unsuitableNodes != null) {
      yield r'unsuitableNodes';
      yield serializers.serialize(
        object.unsuitableNodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatusBuilder result,
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
        case r'unsuitableNodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.unsuitableNodes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatusBuilder();
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

