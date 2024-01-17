//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_secret_env_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1SecretEnvSource {
  /// Returns a new [V1SecretEnvSource] instance.
  V1SecretEnvSource({

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



      /// Specify whether the Secret must be defined
  @JsonKey(
    
    name: r'optional',
    required: false,
    includeIfNull: false
  )


  final bool? optional;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1SecretEnvSource &&
     other.name == name &&
     other.optional == optional;

  @override
  int get hashCode =>
    name.hashCode +
    optional.hashCode;

  factory V1SecretEnvSource.fromJson(Map<String, dynamic> json) => _$V1SecretEnvSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1SecretEnvSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

