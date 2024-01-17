//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_topology_selector_term.dart';
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_storage_class.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1StorageClass {
  /// Returns a new [V1StorageClass] instance.
  V1StorageClass({

     this.allowVolumeExpansion,

     this.allowedTopologies,

     this.apiVersion,

     this.kind,

     this.metadata,

     this.mountOptions,

     this.parameters,

    required  this.provisioner,

     this.reclaimPolicy,

     this.volumeBindingMode,
  });

      /// allowVolumeExpansion shows whether the storage class allow volume expand.
  @JsonKey(
    
    name: r'allowVolumeExpansion',
    required: false,
    includeIfNull: false
  )


  final bool? allowVolumeExpansion;



      /// allowedTopologies restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
  @JsonKey(
    
    name: r'allowedTopologies',
    required: false,
    includeIfNull: false
  )


  final List<V1TopologySelectorTerm>? allowedTopologies;



      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @JsonKey(
    
    name: r'kind',
    required: false,
    includeIfNull: false
  )


  final String? kind;



  @JsonKey(
    
    name: r'metadata',
    required: false,
    includeIfNull: false
  )


  final V1ObjectMeta? metadata;



      /// mountOptions controls the mountOptions for dynamically provisioned PersistentVolumes of this storage class. e.g. [\"ro\", \"soft\"]. Not validated - mount of the PVs will simply fail if one is invalid.
  @JsonKey(
    
    name: r'mountOptions',
    required: false,
    includeIfNull: false
  )


  final List<String>? mountOptions;



      /// parameters holds the parameters for the provisioner that should create volumes of this storage class.
  @JsonKey(
    
    name: r'parameters',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? parameters;



      /// provisioner indicates the type of the provisioner.
  @JsonKey(
    
    name: r'provisioner',
    required: true,
    includeIfNull: false
  )


  final String provisioner;



      /// reclaimPolicy controls the reclaimPolicy for dynamically provisioned PersistentVolumes of this storage class. Defaults to Delete.
  @JsonKey(
    
    name: r'reclaimPolicy',
    required: false,
    includeIfNull: false
  )


  final String? reclaimPolicy;



      /// volumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
  @JsonKey(
    
    name: r'volumeBindingMode',
    required: false,
    includeIfNull: false
  )


  final String? volumeBindingMode;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1StorageClass &&
     other.allowVolumeExpansion == allowVolumeExpansion &&
     other.allowedTopologies == allowedTopologies &&
     other.apiVersion == apiVersion &&
     other.kind == kind &&
     other.metadata == metadata &&
     other.mountOptions == mountOptions &&
     other.parameters == parameters &&
     other.provisioner == provisioner &&
     other.reclaimPolicy == reclaimPolicy &&
     other.volumeBindingMode == volumeBindingMode;

  @override
  int get hashCode =>
    allowVolumeExpansion.hashCode +
    allowedTopologies.hashCode +
    apiVersion.hashCode +
    kind.hashCode +
    metadata.hashCode +
    mountOptions.hashCode +
    parameters.hashCode +
    provisioner.hashCode +
    reclaimPolicy.hashCode +
    volumeBindingMode.hashCode;

  factory V1StorageClass.fromJson(Map<String, dynamic> json) => _$V1StorageClassFromJson(json);

  Map<String, dynamic> toJson() => _$V1StorageClassToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

