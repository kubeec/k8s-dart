//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_resource_field_selector.dart';
import 'package:k8s/src/model/v1_secret_key_selector.dart';
import 'package:k8s/src/model/v1_config_map_key_selector.dart';
import 'package:k8s/src/model/v1_object_field_selector.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_env_var_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1EnvVarSource {
  /// Returns a new [V1EnvVarSource] instance.
  V1EnvVarSource({

     this.configMapKeyRef,

     this.fieldRef,

     this.resourceFieldRef,

     this.secretKeyRef,
  });

  @JsonKey(
    
    name: r'configMapKeyRef',
    required: false,
    includeIfNull: false
  )


  final V1ConfigMapKeySelector? configMapKeyRef;



  @JsonKey(
    
    name: r'fieldRef',
    required: false,
    includeIfNull: false
  )


  final V1ObjectFieldSelector? fieldRef;



  @JsonKey(
    
    name: r'resourceFieldRef',
    required: false,
    includeIfNull: false
  )


  final V1ResourceFieldSelector? resourceFieldRef;



  @JsonKey(
    
    name: r'secretKeyRef',
    required: false,
    includeIfNull: false
  )


  final V1SecretKeySelector? secretKeyRef;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1EnvVarSource &&
     other.configMapKeyRef == configMapKeyRef &&
     other.fieldRef == fieldRef &&
     other.resourceFieldRef == resourceFieldRef &&
     other.secretKeyRef == secretKeyRef;

  @override
  int get hashCode =>
    configMapKeyRef.hashCode +
    fieldRef.hashCode +
    resourceFieldRef.hashCode +
    secretKeyRef.hashCode;

  factory V1EnvVarSource.fromJson(Map<String, dynamic> json) => _$V1EnvVarSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1EnvVarSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

