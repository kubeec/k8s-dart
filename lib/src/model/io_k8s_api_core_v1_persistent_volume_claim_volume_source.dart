//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_persistent_volume_claim_volume_source.g.dart';

/// PersistentVolumeClaimVolumeSource references the user's PVC in the same namespace. This volume finds the bound PV and mounts that volume for the pod. A PersistentVolumeClaimVolumeSource is, essentially, a wrapper around another type of volume that is owned by someone else (the system).
///
/// Properties:
/// * [claimName] - claimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
/// * [readOnly] - readOnly Will force the ReadOnly setting in VolumeMounts. Default false.
@BuiltValue()
abstract class IoK8sApiCoreV1PersistentVolumeClaimVolumeSource implements Built<IoK8sApiCoreV1PersistentVolumeClaimVolumeSource, IoK8sApiCoreV1PersistentVolumeClaimVolumeSourceBuilder> {
  /// claimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  @BuiltValueField(wireName: r'claimName')
  String get claimName;

  /// readOnly Will force the ReadOnly setting in VolumeMounts. Default false.
  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  IoK8sApiCoreV1PersistentVolumeClaimVolumeSource._();

  factory IoK8sApiCoreV1PersistentVolumeClaimVolumeSource([void updates(IoK8sApiCoreV1PersistentVolumeClaimVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1PersistentVolumeClaimVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PersistentVolumeClaimVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PersistentVolumeClaimVolumeSource> get serializer => _$IoK8sApiCoreV1PersistentVolumeClaimVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1PersistentVolumeClaimVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PersistentVolumeClaimVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PersistentVolumeClaimVolumeSource, _$IoK8sApiCoreV1PersistentVolumeClaimVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1PersistentVolumeClaimVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PersistentVolumeClaimVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'claimName';
    yield serializers.serialize(
      object.claimName,
      specifiedType: const FullType(String),
    );
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1PersistentVolumeClaimVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PersistentVolumeClaimVolumeSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'claimName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.claimName = valueDes;
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.readOnly = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1PersistentVolumeClaimVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PersistentVolumeClaimVolumeSourceBuilder();
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

