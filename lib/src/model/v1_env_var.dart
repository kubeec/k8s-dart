//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_env_var_source.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_env_var.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1EnvVar {
  /// Returns a new [V1EnvVar] instance.
  V1EnvVar({

    required  this.name,

     this.value,

     this.valueFrom,
  });

      /// Name of the environment variable. Must be a C_IDENTIFIER.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



      /// Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\".
  @JsonKey(
    
    name: r'value',
    required: false,
    includeIfNull: false
  )


  final String? value;



  @JsonKey(
    
    name: r'valueFrom',
    required: false,
    includeIfNull: false
  )


  final V1EnvVarSource? valueFrom;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1EnvVar &&
     other.name == name &&
     other.value == value &&
     other.valueFrom == valueFrom;

  @override
  int get hashCode =>
    name.hashCode +
    value.hashCode +
    valueFrom.hashCode;

  factory V1EnvVar.fromJson(Map<String, dynamic> json) => _$V1EnvVarFromJson(json);

  Map<String, dynamic> toJson() => _$V1EnvVarToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

