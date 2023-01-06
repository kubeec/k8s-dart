//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_allocation_result.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_resource_claim_consumer_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_resource_v1alpha1_resource_claim_status.g.dart';

/// ResourceClaimStatus tracks whether the resource has been allocated and what the resulting attributes are.
///
/// Properties:
/// * [allocation] 
/// * [deallocationRequested] - DeallocationRequested indicates that a ResourceClaim is to be deallocated.  The driver then must deallocate this claim and reset the field together with clearing the Allocation field.  While DeallocationRequested is set, no new consumers may be added to ReservedFor.
/// * [driverName] - DriverName is a copy of the driver name from the ResourceClass at the time when allocation started.
/// * [reservedFor] - ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started.  There can be at most 32 such reservations. This may get increased in the future, but not reduced.
@BuiltValue()
abstract class IoK8sApiResourceV1alpha1ResourceClaimStatus implements Built<IoK8sApiResourceV1alpha1ResourceClaimStatus, IoK8sApiResourceV1alpha1ResourceClaimStatusBuilder> {
  @BuiltValueField(wireName: r'allocation')
  IoK8sApiResourceV1alpha1AllocationResult? get allocation;

  /// DeallocationRequested indicates that a ResourceClaim is to be deallocated.  The driver then must deallocate this claim and reset the field together with clearing the Allocation field.  While DeallocationRequested is set, no new consumers may be added to ReservedFor.
  @BuiltValueField(wireName: r'deallocationRequested')
  bool? get deallocationRequested;

  /// DriverName is a copy of the driver name from the ResourceClass at the time when allocation started.
  @BuiltValueField(wireName: r'driverName')
  String? get driverName;

  /// ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started.  There can be at most 32 such reservations. This may get increased in the future, but not reduced.
  @BuiltValueField(wireName: r'reservedFor')
  BuiltList<IoK8sApiResourceV1alpha1ResourceClaimConsumerReference>? get reservedFor;

  IoK8sApiResourceV1alpha1ResourceClaimStatus._();

  factory IoK8sApiResourceV1alpha1ResourceClaimStatus([void updates(IoK8sApiResourceV1alpha1ResourceClaimStatusBuilder b)]) = _$IoK8sApiResourceV1alpha1ResourceClaimStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiResourceV1alpha1ResourceClaimStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiResourceV1alpha1ResourceClaimStatus> get serializer => _$IoK8sApiResourceV1alpha1ResourceClaimStatusSerializer();
}

class _$IoK8sApiResourceV1alpha1ResourceClaimStatusSerializer implements PrimitiveSerializer<IoK8sApiResourceV1alpha1ResourceClaimStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiResourceV1alpha1ResourceClaimStatus, _$IoK8sApiResourceV1alpha1ResourceClaimStatus];

  @override
  final String wireName = r'IoK8sApiResourceV1alpha1ResourceClaimStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiResourceV1alpha1ResourceClaimStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.allocation != null) {
      yield r'allocation';
      yield serializers.serialize(
        object.allocation,
        specifiedType: const FullType(IoK8sApiResourceV1alpha1AllocationResult),
      );
    }
    if (object.deallocationRequested != null) {
      yield r'deallocationRequested';
      yield serializers.serialize(
        object.deallocationRequested,
        specifiedType: const FullType(bool),
      );
    }
    if (object.driverName != null) {
      yield r'driverName';
      yield serializers.serialize(
        object.driverName,
        specifiedType: const FullType(String),
      );
    }
    if (object.reservedFor != null) {
      yield r'reservedFor';
      yield serializers.serialize(
        object.reservedFor,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiResourceV1alpha1ResourceClaimConsumerReference)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiResourceV1alpha1ResourceClaimStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiResourceV1alpha1ResourceClaimStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'allocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiResourceV1alpha1AllocationResult),
          ) as IoK8sApiResourceV1alpha1AllocationResult;
          result.allocation.replace(valueDes);
          break;
        case r'deallocationRequested':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.deallocationRequested = valueDes;
          break;
        case r'driverName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.driverName = valueDes;
          break;
        case r'reservedFor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiResourceV1alpha1ResourceClaimConsumerReference)]),
          ) as BuiltList<IoK8sApiResourceV1alpha1ResourceClaimConsumerReference>;
          result.reservedFor.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiResourceV1alpha1ResourceClaimStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiResourceV1alpha1ResourceClaimStatusBuilder();
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

