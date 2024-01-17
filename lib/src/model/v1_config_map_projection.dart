//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_key_to_path.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_config_map_projection.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ConfigMapProjection {
  /// Returns a new [V1ConfigMapProjection] instance.
  V1ConfigMapProjection({

     this.items,

     this.name,

     this.optional,
  });

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
  bool operator ==(Object other) => identical(this, other) || other is V1ConfigMapProjection &&
     other.items == items &&
     other.name == name &&
     other.optional == optional;

  @override
  int get hashCode =>
    items.hashCode +
    name.hashCode +
    optional.hashCode;

  factory V1ConfigMapProjection.fromJson(Map<String, dynamic> json) => _$V1ConfigMapProjectionFromJson(json);

  Map<String, dynamic> toJson() => _$V1ConfigMapProjectionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

