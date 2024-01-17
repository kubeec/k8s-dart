//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:k8s/src/model/v1_policy_rule.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_role.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Role {
  /// Returns a new [V1Role] instance.
  V1Role({

     this.apiVersion,

     this.kind,

     this.metadata,

     this.rules,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @JsonKey(
    
    name: r'kind',
    required: false,
    includeIfNull: false
  )


  final String? kind;



  @JsonKey(
    
    name: r'metadata',
    required: false,
    includeIfNull: false
  )


  final V1ObjectMeta? metadata;



      /// Rules holds all the PolicyRules for this Role
  @JsonKey(
    
    name: r'rules',
    required: false,
    includeIfNull: false
  )


  final List<V1PolicyRule>? rules;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Role &&
     other.apiVersion == apiVersion &&
     other.kind == kind &&
     other.metadata == metadata &&
     other.rules == rules;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    kind.hashCode +
    metadata.hashCode +
    rules.hashCode;

  factory V1Role.fromJson(Map<String, dynamic> json) => _$V1RoleFromJson(json);

  Map<String, dynamic> toJson() => _$V1RoleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

