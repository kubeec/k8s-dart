//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_label_selector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_typed_local_object_reference.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_typed_object_reference.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_resource_requirements.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_persistent_volume_claim_spec.g.dart';

/// PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes
///
/// Properties:
/// * [accessModes] - accessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
/// * [dataSource] 
/// * [dataSourceRef] 
/// * [resources] 
/// * [selector] 
/// * [storageClassName] - storageClassName is the name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1
/// * [volumeMode] - volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec.
/// * [volumeName] - volumeName is the binding reference to the PersistentVolume backing this claim.
@BuiltValue()
abstract class IoK8sApiCoreV1PersistentVolumeClaimSpec implements Built<IoK8sApiCoreV1PersistentVolumeClaimSpec, IoK8sApiCoreV1PersistentVolumeClaimSpecBuilder> {
  /// accessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
  @BuiltValueField(wireName: r'accessModes')
  BuiltList<String>? get accessModes;

  @BuiltValueField(wireName: r'dataSource')
  IoK8sApiCoreV1TypedLocalObjectReference? get dataSource;

  @BuiltValueField(wireName: r'dataSourceRef')
  IoK8sApiCoreV1TypedObjectReference? get dataSourceRef;

  @BuiltValueField(wireName: r'resources')
  IoK8sApiCoreV1ResourceRequirements? get resources;

  @BuiltValueField(wireName: r'selector')
  IoK8sApimachineryPkgApisMetaV1LabelSelector? get selector;

  /// storageClassName is the name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1
  @BuiltValueField(wireName: r'storageClassName')
  String? get storageClassName;

  /// volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec.
  @BuiltValueField(wireName: r'volumeMode')
  String? get volumeMode;

  /// volumeName is the binding reference to the PersistentVolume backing this claim.
  @BuiltValueField(wireName: r'volumeName')
  String? get volumeName;

  IoK8sApiCoreV1PersistentVolumeClaimSpec._();

  factory IoK8sApiCoreV1PersistentVolumeClaimSpec([void updates(IoK8sApiCoreV1PersistentVolumeClaimSpecBuilder b)]) = _$IoK8sApiCoreV1PersistentVolumeClaimSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PersistentVolumeClaimSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PersistentVolumeClaimSpec> get serializer => _$IoK8sApiCoreV1PersistentVolumeClaimSpecSerializer();
}

class _$IoK8sApiCoreV1PersistentVolumeClaimSpecSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PersistentVolumeClaimSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PersistentVolumeClaimSpec, _$IoK8sApiCoreV1PersistentVolumeClaimSpec];

  @override
  final String wireName = r'IoK8sApiCoreV1PersistentVolumeClaimSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PersistentVolumeClaimSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accessModes != null) {
      yield r'accessModes';
      yield serializers.serialize(
        object.accessModes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.dataSource != null) {
      yield r'dataSource';
      yield serializers.serialize(
        object.dataSource,
        specifiedType: const FullType(IoK8sApiCoreV1TypedLocalObjectReference),
      );
    }
    if (object.dataSourceRef != null) {
      yield r'dataSourceRef';
      yield serializers.serialize(
        object.dataSourceRef,
        specifiedType: const FullType(IoK8sApiCoreV1TypedObjectReference),
      );
    }
    if (object.resources != null) {
      yield r'resources';
      yield serializers.serialize(
        object.resources,
        specifiedType: const FullType(IoK8sApiCoreV1ResourceRequirements),
      );
    }
    if (object.selector != null) {
      yield r'selector';
      yield serializers.serialize(
        object.selector,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
      );
    }
    if (object.storageClassName != null) {
      yield r'storageClassName';
      yield serializers.serialize(
        object.storageClassName,
        specifiedType: const FullType(String),
      );
    }
    if (object.volumeMode != null) {
      yield r'volumeMode';
      yield serializers.serialize(
        object.volumeMode,
        specifiedType: const FullType(String),
      );
    }
    if (object.volumeName != null) {
      yield r'volumeName';
      yield serializers.serialize(
        object.volumeName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1PersistentVolumeClaimSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PersistentVolumeClaimSpecBuilder result,
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
        case r'dataSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1TypedLocalObjectReference),
          ) as IoK8sApiCoreV1TypedLocalObjectReference;
          result.dataSource.replace(valueDes);
          break;
        case r'dataSourceRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1TypedObjectReference),
          ) as IoK8sApiCoreV1TypedObjectReference;
          result.dataSourceRef.replace(valueDes);
          break;
        case r'resources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ResourceRequirements),
          ) as IoK8sApiCoreV1ResourceRequirements;
          result.resources.replace(valueDes);
          break;
        case r'selector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
          ) as IoK8sApimachineryPkgApisMetaV1LabelSelector;
          result.selector.replace(valueDes);
          break;
        case r'storageClassName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.storageClassName = valueDes;
          break;
        case r'volumeMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.volumeMode = valueDes;
          break;
        case r'volumeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.volumeName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1PersistentVolumeClaimSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PersistentVolumeClaimSpecBuilder();
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

