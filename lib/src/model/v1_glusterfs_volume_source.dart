//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_glusterfs_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1GlusterfsVolumeSource {
  /// Returns a new [V1GlusterfsVolumeSource] instance.
  V1GlusterfsVolumeSource({

    required  this.endpoints,

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
  bool operator ==(Object other) => identical(this, other) || other is V1GlusterfsVolumeSource &&
     other.endpoints == endpoints &&
     other.path == path &&
     other.readOnly == readOnly;

  @override
  int get hashCode =>
    endpoints.hashCode +
    path.hashCode +
    readOnly.hashCode;

  factory V1GlusterfsVolumeSource.fromJson(Map<String, dynamic> json) => _$V1GlusterfsVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1GlusterfsVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

