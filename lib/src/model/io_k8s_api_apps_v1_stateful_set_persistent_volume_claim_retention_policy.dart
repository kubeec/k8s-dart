//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apps_v1_stateful_set_persistent_volume_claim_retention_policy.g.dart';

/// StatefulSetPersistentVolumeClaimRetentionPolicy describes the policy used for PVCs created from the StatefulSet VolumeClaimTemplates.
///
/// Properties:
/// * [whenDeleted] - WhenDeleted specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is deleted. The default policy of `Retain` causes PVCs to not be affected by StatefulSet deletion. The `Delete` policy causes those PVCs to be deleted.
/// * [whenScaled] - WhenScaled specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is scaled down. The default policy of `Retain` causes PVCs to not be affected by a scaledown. The `Delete` policy causes the associated PVCs for any excess pods above the replica count to be deleted.
@BuiltValue()
abstract class IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy implements Built<IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy, IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicyBuilder> {
  /// WhenDeleted specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is deleted. The default policy of `Retain` causes PVCs to not be affected by StatefulSet deletion. The `Delete` policy causes those PVCs to be deleted.
  @BuiltValueField(wireName: r'whenDeleted')
  String? get whenDeleted;

  /// WhenScaled specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is scaled down. The default policy of `Retain` causes PVCs to not be affected by a scaledown. The `Delete` policy causes the associated PVCs for any excess pods above the replica count to be deleted.
  @BuiltValueField(wireName: r'whenScaled')
  String? get whenScaled;

  IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy._();

  factory IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy([void updates(IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicyBuilder b)]) = _$IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy> get serializer => _$IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicySerializer();
}

class _$IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicySerializer implements PrimitiveSerializer<IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy> {
  @override
  final Iterable<Type> types = const [IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy, _$IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy];

  @override
  final String wireName = r'IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.whenDeleted != null) {
      yield r'whenDeleted';
      yield serializers.serialize(
        object.whenDeleted,
        specifiedType: const FullType(String),
      );
    }
    if (object.whenScaled != null) {
      yield r'whenScaled';
      yield serializers.serialize(
        object.whenScaled,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'whenDeleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.whenDeleted = valueDes;
          break;
        case r'whenScaled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.whenScaled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicyBuilder();
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

