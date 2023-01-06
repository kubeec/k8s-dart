//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_persistent_volume_claim_condition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_persistent_volume_claim_status.g.dart';

/// PersistentVolumeClaimStatus is the current status of a persistent volume claim.
///
/// Properties:
/// * [accessModes] - accessModes contains the actual access modes the volume backing the PVC has. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
/// * [allocatedResources] - allocatedResources is the storage resource within AllocatedResources tracks the capacity allocated to a PVC. It may be larger than the actual capacity when a volume expansion operation is requested. For storage quota, the larger value from allocatedResources and PVC.spec.resources is used. If allocatedResources is not set, PVC.spec.resources alone is used for quota calculation. If a volume expansion capacity request is lowered, allocatedResources is only lowered if there are no expansion operations in progress and if the actual volume capacity is equal or lower than the requested capacity. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
/// * [capacity] - capacity represents the actual resources of the underlying volume.
/// * [conditions] - conditions is the current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'.
/// * [phase] - phase represents the current phase of PersistentVolumeClaim.  
/// * [resizeStatus] - resizeStatus stores status of resize operation. ResizeStatus is not set by default but when expansion is complete resizeStatus is set to empty string by resize controller or kubelet. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
@BuiltValue()
abstract class IoK8sApiCoreV1PersistentVolumeClaimStatus implements Built<IoK8sApiCoreV1PersistentVolumeClaimStatus, IoK8sApiCoreV1PersistentVolumeClaimStatusBuilder> {
  /// accessModes contains the actual access modes the volume backing the PVC has. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
  @BuiltValueField(wireName: r'accessModes')
  BuiltList<String>? get accessModes;

  /// allocatedResources is the storage resource within AllocatedResources tracks the capacity allocated to a PVC. It may be larger than the actual capacity when a volume expansion operation is requested. For storage quota, the larger value from allocatedResources and PVC.spec.resources is used. If allocatedResources is not set, PVC.spec.resources alone is used for quota calculation. If a volume expansion capacity request is lowered, allocatedResources is only lowered if there are no expansion operations in progress and if the actual volume capacity is equal or lower than the requested capacity. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
  @BuiltValueField(wireName: r'allocatedResources')
  BuiltMap<String, String>? get allocatedResources;

  /// capacity represents the actual resources of the underlying volume.
  @BuiltValueField(wireName: r'capacity')
  BuiltMap<String, String>? get capacity;

  /// conditions is the current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'.
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApiCoreV1PersistentVolumeClaimCondition>? get conditions;

  /// phase represents the current phase of PersistentVolumeClaim.  
  @BuiltValueField(wireName: r'phase')
  String? get phase;

  /// resizeStatus stores status of resize operation. ResizeStatus is not set by default but when expansion is complete resizeStatus is set to empty string by resize controller or kubelet. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
  @BuiltValueField(wireName: r'resizeStatus')
  String? get resizeStatus;

  IoK8sApiCoreV1PersistentVolumeClaimStatus._();

  factory IoK8sApiCoreV1PersistentVolumeClaimStatus([void updates(IoK8sApiCoreV1PersistentVolumeClaimStatusBuilder b)]) = _$IoK8sApiCoreV1PersistentVolumeClaimStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PersistentVolumeClaimStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PersistentVolumeClaimStatus> get serializer => _$IoK8sApiCoreV1PersistentVolumeClaimStatusSerializer();
}

class _$IoK8sApiCoreV1PersistentVolumeClaimStatusSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PersistentVolumeClaimStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PersistentVolumeClaimStatus, _$IoK8sApiCoreV1PersistentVolumeClaimStatus];

  @override
  final String wireName = r'IoK8sApiCoreV1PersistentVolumeClaimStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PersistentVolumeClaimStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accessModes != null) {
      yield r'accessModes';
      yield serializers.serialize(
        object.accessModes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.allocatedResources != null) {
      yield r'allocatedResources';
      yield serializers.serialize(
        object.allocatedResources,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.capacity != null) {
      yield r'capacity';
      yield serializers.serialize(
        object.capacity,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PersistentVolumeClaimCondition)]),
      );
    }
    if (object.phase != null) {
      yield r'phase';
      yield serializers.serialize(
        object.phase,
        specifiedType: const FullType(String),
      );
    }
    if (object.resizeStatus != null) {
      yield r'resizeStatus';
      yield serializers.serialize(
        object.resizeStatus,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1PersistentVolumeClaimStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PersistentVolumeClaimStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accessModes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.accessModes.replace(valueDes);
          break;
        case r'allocatedResources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.allocatedResources.replace(valueDes);
          break;
        case r'capacity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.capacity.replace(valueDes);
          break;
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PersistentVolumeClaimCondition)]),
          ) as BuiltList<IoK8sApiCoreV1PersistentVolumeClaimCondition>;
          result.conditions.replace(valueDes);
          break;
        case r'phase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phase = valueDes;
          break;
        case r'resizeStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resizeStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1PersistentVolumeClaimStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PersistentVolumeClaimStatusBuilder();
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

