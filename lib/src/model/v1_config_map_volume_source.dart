//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_key_to_path.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_config_map_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ConfigMapVolumeSource {
  /// Returns a new [V1ConfigMapVolumeSource] instance.
  V1ConfigMapVolumeSource({

     this.defaultMode,

     this.items,

     this.name,

     this.optional,
  });

      /// defaultMode is optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  @JsonKey(
    
    name: r'defaultMode',
    required: false,
    includeIfNull: false
  )


  final int? defaultMode;



      /// items if unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
  @JsonKey(
    
    name: r'items',
    required: false,
    includeIfNull: false
  )


  final List<V1KeyToPath>? items;



      /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



      /// optional specify whether the ConfigMap or its keys must be defined
  @JsonKey(
    
    name: r'optional',
    required: false,
    includeIfNull: false
  )


  final bool? optional;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ConfigMapVolumeSource &&
     other.defaultMode == defaultMode &&
     other.items == items &&
     other.name == name &&
     other.optional == optional;

  @override
  int get hashCode =>
    defaultMode.hashCode +
    items.hashCode +
    name.hashCode +
    optional.hashCode;

  factory V1ConfigMapVolumeSource.fromJson(Map<String, dynamic> json) => _$V1ConfigMapVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1ConfigMapVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

