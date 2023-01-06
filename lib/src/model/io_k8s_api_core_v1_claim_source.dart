//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_claim_source.g.dart';

/// ClaimSource describes a reference to a ResourceClaim.  Exactly one of these fields should be set.  Consumers of this type must treat an empty object as if it has an unknown value.
///
/// Properties:
/// * [resourceClaimName] - ResourceClaimName is the name of a ResourceClaim object in the same namespace as this pod.
/// * [resourceClaimTemplateName] - ResourceClaimTemplateName is the name of a ResourceClaimTemplate object in the same namespace as this pod.  The template will be used to create a new ResourceClaim, which will be bound to this pod. When this pod is deleted, the ResourceClaim will also be deleted. The name of the ResourceClaim will be <pod name>-<resource name>, where <resource name> is the PodResourceClaim.Name. Pod validation will reject the pod if the concatenated name is not valid for a ResourceClaim (e.g. too long).  An existing ResourceClaim with that name that is not owned by the pod will not be used for the pod to avoid using an unrelated resource by mistake. Scheduling and pod startup are then blocked until the unrelated ResourceClaim is removed.  This field is immutable and no changes will be made to the corresponding ResourceClaim by the control plane after creating the ResourceClaim.
@BuiltValue()
abstract class IoK8sApiCoreV1ClaimSource implements Built<IoK8sApiCoreV1ClaimSource, IoK8sApiCoreV1ClaimSourceBuilder> {
  /// ResourceClaimName is the name of a ResourceClaim object in the same namespace as this pod.
  @BuiltValueField(wireName: r'resourceClaimName')
  String? get resourceClaimName;

  /// ResourceClaimTemplateName is the name of a ResourceClaimTemplate object in the same namespace as this pod.  The template will be used to create a new ResourceClaim, which will be bound to this pod. When this pod is deleted, the ResourceClaim will also be deleted. The name of the ResourceClaim will be <pod name>-<resource name>, where <resource name> is the PodResourceClaim.Name. Pod validation will reject the pod if the concatenated name is not valid for a ResourceClaim (e.g. too long).  An existing ResourceClaim with that name that is not owned by the pod will not be used for the pod to avoid using an unrelated resource by mistake. Scheduling and pod startup are then blocked until the unrelated ResourceClaim is removed.  This field is immutable and no changes will be made to the corresponding ResourceClaim by the control plane after creating the ResourceClaim.
  @BuiltValueField(wireName: r'resourceClaimTemplateName')
  String? get resourceClaimTemplateName;

  IoK8sApiCoreV1ClaimSource._();

  factory IoK8sApiCoreV1ClaimSource([void updates(IoK8sApiCoreV1ClaimSourceBuilder b)]) = _$IoK8sApiCoreV1ClaimSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ClaimSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ClaimSource> get serializer => _$IoK8sApiCoreV1ClaimSourceSerializer();
}

class _$IoK8sApiCoreV1ClaimSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ClaimSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ClaimSource, _$IoK8sApiCoreV1ClaimSource];

  @override
  final String wireName = r'IoK8sApiCoreV1ClaimSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ClaimSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.resourceClaimName != null) {
      yield r'resourceClaimName';
      yield serializers.serialize(
        object.resourceClaimName,
        specifiedType: const FullType(String),
      );
    }
    if (object.resourceClaimTemplateName != null) {
      yield r'resourceClaimTemplateName';
      yield serializers.serialize(
        object.resourceClaimTemplateName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ClaimSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ClaimSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'resourceClaimName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resourceClaimName = valueDes;
          break;
        case r'resourceClaimTemplateName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resourceClaimTemplateName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ClaimSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ClaimSourceBuilder();
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

