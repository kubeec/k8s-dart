//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_key_to_path.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_secret_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1SecretVolumeSource {
  /// Returns a new [V1SecretVolumeSource] instance.
  V1SecretVolumeSource({

     this.defaultMode,

     this.items,

     this.optional,

     this.secretName,
  });

      /// defaultMode is Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  @JsonKey(
    
    name: r'defaultMode',
    required: false,
    includeIfNull: false
  )


  final int? defaultMode;



      /// items If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
  @JsonKey(
    
    name: r'items',
    required: false,
    includeIfNull: false
  )


  final List<V1KeyToPath>? items;



      /// optional field specify whether the Secret or its keys must be defined
  @JsonKey(
    
    name: r'optional',
    required: false,
    includeIfNull: false
  )


  final bool? optional;



      /// secretName is the name of the secret in the pod's namespace to use. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  @JsonKey(
    
    name: r'secretName',
    required: false,
    includeIfNull: false
  )


  final String? secretName;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1SecretVolumeSource &&
     other.defaultMode == defaultMode &&
     other.items == items &&
     other.optional == optional &&
     other.secretName == secretName;

  @override
  int get hashCode =>
    defaultMode.hashCode +
    items.hashCode +
    optional.hashCode +
    secretName.hashCode;

  factory V1SecretVolumeSource.fromJson(Map<String, dynamic> json) => _$V1SecretVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1SecretVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

