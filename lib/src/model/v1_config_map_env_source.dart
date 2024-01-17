//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_config_map_env_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ConfigMapEnvSource {
  /// Returns a new [V1ConfigMapEnvSource] instance.
  V1ConfigMapEnvSource({

     this.name,

     this.optional,
  });

      /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



      /// Specify whether the ConfigMap must be defined
  @JsonKey(
    
    name: r'optional',
    required: false,
    includeIfNull: false
  )


  final bool? optional;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ConfigMapEnvSource &&
     other.name == name &&
     other.optional == optional;

  @override
  int get hashCode =>
    name.hashCode +
    optional.hashCode;

  factory V1ConfigMapEnvSource.fromJson(Map<String, dynamic> json) => _$V1ConfigMapEnvSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1ConfigMapEnvSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

