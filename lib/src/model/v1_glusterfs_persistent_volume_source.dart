//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_glusterfs_persistent_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1GlusterfsPersistentVolumeSource {
  /// Returns a new [V1GlusterfsPersistentVolumeSource] instance.
  V1GlusterfsPersistentVolumeSource({

    required  this.endpoints,

     this.endpointsNamespace,

    required  this.path,

     this.readOnly,
  });

      /// endpoints is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  @JsonKey(
    
    name: r'endpoints',
    required: true,
    includeIfNull: false
  )


  final String endpoints;



      /// endpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  @JsonKey(
    
    name: r'endpointsNamespace',
    required: false,
    includeIfNull: false
  )


  final String? endpointsNamespace;



      /// path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  @JsonKey(
    
    name: r'path',
    required: true,
    includeIfNull: false
  )


  final String path;



      /// readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1GlusterfsPersistentVolumeSource &&
     other.endpoints == endpoints &&
     other.endpointsNamespace == endpointsNamespace &&
     other.path == path &&
     other.readOnly == readOnly;

  @override
  int get hashCode =>
    endpoints.hashCode +
    endpointsNamespace.hashCode +
    path.hashCode +
    readOnly.hashCode;

  factory V1GlusterfsPersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$V1GlusterfsPersistentVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1GlusterfsPersistentVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

