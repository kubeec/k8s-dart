//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_topology_selector_term.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_storage_v1_storage_class.g.dart';

/// StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.  StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
///
/// Properties:
/// * [allowVolumeExpansion] - AllowVolumeExpansion shows whether the storage class allow volume expand
/// * [allowedTopologies] - Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [metadata] 
/// * [mountOptions] - Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. [\"ro\", \"soft\"]. Not validated - mount of the PVs will simply fail if one is invalid.
/// * [parameters] - Parameters holds the parameters for the provisioner that should create volumes of this storage class.
/// * [provisioner] - Provisioner indicates the type of the provisioner.
/// * [reclaimPolicy] - Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.
/// * [volumeBindingMode] - VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
@BuiltValue()
abstract class IoK8sApiStorageV1StorageClass implements Built<IoK8sApiStorageV1StorageClass, IoK8sApiStorageV1StorageClassBuilder> {
  /// AllowVolumeExpansion shows whether the storage class allow volume expand
  @BuiltValueField(wireName: r'allowVolumeExpansion')
  bool? get allowVolumeExpansion;

  /// Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
  @BuiltValueField(wireName: r'allowedTopologies')
  BuiltList<IoK8sApiCoreV1TopologySelectorTerm>? get allowedTopologies;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ObjectMeta? get metadata;

  /// Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. [\"ro\", \"soft\"]. Not validated - mount of the PVs will simply fail if one is invalid.
  @BuiltValueField(wireName: r'mountOptions')
  BuiltList<String>? get mountOptions;

  /// Parameters holds the parameters for the provisioner that should create volumes of this storage class.
  @BuiltValueField(wireName: r'parameters')
  BuiltMap<String, String>? get parameters;

  /// Provisioner indicates the type of the provisioner.
  @BuiltValueField(wireName: r'provisioner')
  String get provisioner;

  /// Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.
  @BuiltValueField(wireName: r'reclaimPolicy')
  String? get reclaimPolicy;

  /// VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
  @BuiltValueField(wireName: r'volumeBindingMode')
  String? get volumeBindingMode;

  IoK8sApiStorageV1StorageClass._();

  factory IoK8sApiStorageV1StorageClass([void updates(IoK8sApiStorageV1StorageClassBuilder b)]) = _$IoK8sApiStorageV1StorageClass;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiStorageV1StorageClassBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiStorageV1StorageClass> get serializer => _$IoK8sApiStorageV1StorageClassSerializer();
}

class _$IoK8sApiStorageV1StorageClassSerializer implements PrimitiveSerializer<IoK8sApiStorageV1StorageClass> {
  @override
  final Iterable<Type> types = const [IoK8sApiStorageV1StorageClass, _$IoK8sApiStorageV1StorageClass];

  @override
  final String wireName = r'IoK8sApiStorageV1StorageClass';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiStorageV1StorageClass object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.allowVolumeExpansion != null) {
      yield r'allowVolumeExpansion';
      yield serializers.serialize(
        object.allowVolumeExpansion,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowedTopologies != null) {
      yield r'allowedTopologies';
      yield serializers.serialize(
        object.allowedTopologies,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1TopologySelectorTerm)]),
      );
    }
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
      );
    }
    if (object.mountOptions != null) {
      yield r'mountOptions';
      yield serializers.serialize(
        object.mountOptions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.parameters != null) {
      yield r'parameters';
      yield serializers.serialize(
        object.parameters,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    yield r'provisioner';
    yield serializers.serialize(
      object.provisioner,
      specifiedType: const FullType(String),
    );
    if (object.reclaimPolicy != null) {
      yield r'reclaimPolicy';
      yield serializers.serialize(
        object.reclaimPolicy,
        specifiedType: const FullType(String),
      );
    }
    if (object.volumeBindingMode != null) {
      yield r'volumeBindingMode';
      yield serializers.serialize(
        object.volumeBindingMode,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiStorageV1StorageClass object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiStorageV1StorageClassBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'allowVolumeExpansion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowVolumeExpansion = valueDes;
          break;
        case r'allowedTopologies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1TopologySelectorTerm)]),
          ) as BuiltList<IoK8sApiCoreV1TopologySelectorTerm>;
          result.allowedTopologies.replace(valueDes);
          break;
        case r'apiVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.apiVersion = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
          ) as IoK8sApimachineryPkgApisMetaV1ObjectMeta;
          result.metadata.replace(valueDes);
          break;
        case r'mountOptions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.mountOptions.replace(valueDes);
          break;
        case r'parameters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.parameters.replace(valueDes);
          break;
        case r'provisioner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provisioner = valueDes;
          break;
        case r'reclaimPolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reclaimPolicy = valueDes;
          break;
        case r'volumeBindingMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.volumeBindingMode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiStorageV1StorageClass deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiStorageV1StorageClassBuilder();
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

