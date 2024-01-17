//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_volume_mount.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1VolumeMount {
  /// Returns a new [V1VolumeMount] instance.
  V1VolumeMount({

    required  this.mountPath,

     this.mountPropagation,

    required  this.name,

     this.readOnly,

     this.subPath,

     this.subPathExpr,
  });

      /// Path within the container at which the volume should be mounted.  Must not contain ':'.
  @JsonKey(
    
    name: r'mountPath',
    required: true,
    includeIfNull: false
  )


  final String mountPath;



      /// mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10.
  @JsonKey(
    
    name: r'mountPropagation',
    required: false,
    includeIfNull: false
  )


  final String? mountPropagation;



      /// This must match the Name of a Volume.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



      /// Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



      /// Path within the volume from which the container's volume should be mounted. Defaults to \"\" (volume's root).
  @JsonKey(
    
    name: r'subPath',
    required: false,
    includeIfNull: false
  )


  final String? subPath;



      /// Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to \"\" (volume's root). SubPathExpr and SubPath are mutually exclusive.
  @JsonKey(
    
    name: r'subPathExpr',
    required: false,
    includeIfNull: false
  )


  final String? subPathExpr;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1VolumeMount &&
     other.mountPath == mountPath &&
     other.mountPropagation == mountPropagation &&
     other.name == name &&
     other.readOnly == readOnly &&
     other.subPath == subPath &&
     other.subPathExpr == subPathExpr;

  @override
  int get hashCode =>
    mountPath.hashCode +
    mountPropagation.hashCode +
    name.hashCode +
    readOnly.hashCode +
    subPath.hashCode +
    subPathExpr.hashCode;

  factory V1VolumeMount.fromJson(Map<String, dynamic> json) => _$V1VolumeMountFromJson(json);

  Map<String, dynamic> toJson() => _$V1VolumeMountToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

