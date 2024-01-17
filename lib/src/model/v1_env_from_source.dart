//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_config_map_env_source.dart';
import 'package:k8s/src/model/v1_secret_env_source.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_env_from_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1EnvFromSource {
  /// Returns a new [V1EnvFromSource] instance.
  V1EnvFromSource({

     this.configMapRef,

     this.prefix,

     this.secretRef,
  });

  @JsonKey(
    
    name: r'configMapRef',
    required: false,
    includeIfNull: false
  )


  final V1ConfigMapEnvSource? configMapRef;



      /// An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
  @JsonKey(
    
    name: r'prefix',
    required: false,
    includeIfNull: false
  )


  final String? prefix;



  @JsonKey(
    
    name: r'secretRef',
    required: false,
    includeIfNull: false
  )


  final V1SecretEnvSource? secretRef;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1EnvFromSource &&
     other.configMapRef == configMapRef &&
     other.prefix == prefix &&
     other.secretRef == secretRef;

  @override
  int get hashCode =>
    configMapRef.hashCode +
    prefix.hashCode +
    secretRef.hashCode;

  factory V1EnvFromSource.fromJson(Map<String, dynamic> json) => _$V1EnvFromSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1EnvFromSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

