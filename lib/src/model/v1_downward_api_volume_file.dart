//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_resource_field_selector.dart';
import 'package:k8s/src/model/v1_object_field_selector.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_downward_api_volume_file.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1DownwardAPIVolumeFile {
  /// Returns a new [V1DownwardAPIVolumeFile] instance.
  V1DownwardAPIVolumeFile({

     this.fieldRef,

     this.mode,

    required  this.path,

     this.resourceFieldRef,
  });

  @JsonKey(
    
    name: r'fieldRef',
    required: false,
    includeIfNull: false
  )


  final V1ObjectFieldSelector? fieldRef;



      /// Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  @JsonKey(
    
    name: r'mode',
    required: false,
    includeIfNull: false
  )


  final int? mode;



      /// Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'
  @JsonKey(
    
    name: r'path',
    required: true,
    includeIfNull: false
  )


  final String path;



  @JsonKey(
    
    name: r'resourceFieldRef',
    required: false,
    includeIfNull: false
  )


  final V1ResourceFieldSelector? resourceFieldRef;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1DownwardAPIVolumeFile &&
     other.fieldRef == fieldRef &&
     other.mode == mode &&
     other.path == path &&
     other.resourceFieldRef == resourceFieldRef;

  @override
  int get hashCode =>
    fieldRef.hashCode +
    mode.hashCode +
    path.hashCode +
    resourceFieldRef.hashCode;

  factory V1DownwardAPIVolumeFile.fromJson(Map<String, dynamic> json) => _$V1DownwardAPIVolumeFileFromJson(json);

  Map<String, dynamic> toJson() => _$V1DownwardAPIVolumeFileToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

